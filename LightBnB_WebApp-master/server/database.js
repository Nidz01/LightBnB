const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  host: 'localhost',
  database: 'lightbnb',
  password: '123'
});


////////////***** PROPERTIES RELATED QUERIES ******/////////////

// QUERY 1: Get All Properties.

const getAllProperties = function(options, limit = 10) {
  return pool.query(`
  SELECT * FROM properties
  LIMIT $1;
  `, [limit])
  .then(res => res.rows);
}

////////////*****   USER RELATED QUERIES    ******/////////////

// QUERY 1: Get User with email address.

const getUserWithEmail = function(email) {
  return pool.query(`
  SELECT * FROM users
    WHERE email = $1; 
`, [email])
.then(res => res.rows[0]);
};

// QUERY 2: Get User with Id.

const getUserWithId = function(id) {
  return pool.query(`
  SELECT * FROM users
    WHERE id = $1; 
`, [id])
.then(res => res.rows[0]);
};

// QUERY 3: Add a new user.

const addUser =  function(user) {
  return pool.query(`
  INSERT INTO users (name, email, password) VALUES ($1, $2, $3) RETURNING *;`
  , [user.name, user.email, user.password])
  .then(res => res.rows[0]);
};

////////////***** RESERVATIONS RELATED QUERIES  ******/////////////

// QUERY 1: Get All Reservations.

const getAllReservations = function(guest_id, limit = 10) {
  return pool
    .query(`
    SELECT reservations.*, avg(property_reviews.rating) as average_rating, properties.*
    FROM reservations
    JOIN properties
    ON reservations.property_id = properties.id
    JOIN property_reviews
    ON property_reviews.property_id = properties.id
    WHERE reservations.guest_id = $1
    AND reservations.end_date < now()::date
    GROUP BY properties.id, reservations.id
    ORDER BY reservations.start_date
    LIMIT $2;`
  , [guest_id, limit])
  .then(res => res.rows);
};

/*
const properties = require('./json/properties.json');
const users = require('./json/users.json');

/// Users

/**
 * Get a single user from the database given their email.
 * @param {String} email The email of the user.
 * @return {Promise<{}>} A promise to the user.
const getUserWithEmail = function(email) {
  let user;
  for (const userId in users) {
    user = users[userId];
    if (user.email.toLowerCase() === email.toLowerCase()) {
      break;
    } else {
      user = null;
    }
  }
  return Promise.resolve(user);
}

/**
 * Get a single user from the database given their id.
 * @param {string} id The id of the user.
 * @return {Promise<{}>} A promise to the user.
const getUserWithId = function(id) {
  return Promise.resolve(users[id]);
}



/*
 * Add a new user to the database.
 * @param {{name: string, password: string, email: string}} user
 * @return {Promise<{}>} A promise to the user.
const addUser =  function(user) {
  const userId = Object.keys(users).length + 1;
  user.id = userId;
  users[userId] = user;
  return Promise.resolve(user);
}
*/

/// Reservations
//Get all reservations for a single user.
/*
 * @param {string} guest_id The id of the user.
 * @return {Promise<[{}]>} A promise to the reservations.
const getAllReservations = function(guest_id, limit = 10) {
  return getAllProperties(null, 2);
}
*/



/*
 * @param {{}} options An object containing query options.
 * @param {*} limit The number of results to return.
 * @return {Promise<[{}]>}  A promise to the properties.
const getAllProperties = function(options, limit = 10) {
  const limitedProperties = {};
  for (let i = 1; i <= limit; i++) {
    limitedProperties[i] = properties[i];
  }
  return Promise.resolve(limitedProperties);
}
*/

//Add a property to the database
/*
 * @param {{}} property An object containing all of the property details.
 * @return {Promise<{}>} A promise to the property.
const addProperty = function(property) {
  const propertyId = Object.keys(properties).length + 1;
  property.id = propertyId;
  properties[propertyId] = property;
  return Promise.resolve(property);
}
exports.addProperty = addProperty;
exports.getAllProperties = getAllProperties;
*/
exports.getAllProperties = getAllProperties;
exports.getUserWithEmail = getUserWithEmail;
exports.getUserWithId = getUserWithId;
exports.addUser = addUser;
exports.getAllReservations = getAllReservations;
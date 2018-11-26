'use strict';

/**
 * Org.js controller
 *
 * @description: A set of functions called "actions" for managing `Org`.
 */

module.exports = {

  /**
   * Retrieve org records.
   *
   * @return {Object|Array}
   */

  find: async (ctx) => {
    if (ctx.query._q) {
      return strapi.services.org.search(ctx.query);
    } else {
      return strapi.services.org.fetchAll(ctx.query);
    }
  },

  /**
   * Retrieve a org record.
   *
   * @return {Object}
   */

  findOne: async (ctx) => {
    return strapi.services.org.fetch(ctx.params);
  },

  /**
   * Count org records.
   *
   * @return {Number}
   */

  count: async (ctx) => {
    return strapi.services.org.count(ctx.query);
  },

  /**
   * Create a/an org record.
   *
   * @return {Object}
   */

  create: async (ctx) => {
    return strapi.services.org.add(ctx.request.body);
  },

  /**
   * Update a/an org record.
   *
   * @return {Object}
   */

  update: async (ctx, next) => {
    return strapi.services.org.edit(ctx.params, ctx.request.body) ;
  },

  /**
   * Destroy a/an org record.
   *
   * @return {Object}
   */

  destroy: async (ctx, next) => {
    return strapi.services.org.remove(ctx.params);
  },

  /**
   * Add relation to a/an org record.
   *
   * @return {Object}
   */

  createRelation: async (ctx, next) => {
    return strapi.services.org.addRelation(ctx.params, ctx.request.body);
  },

  /**
   * Update relation to a/an org record.
   *
   * @return {Object}
   */

  updateRelation: async (ctx, next) => {
    return strapi.services.org.editRelation(ctx.params, ctx.request.body);
  },

  /**
   * Destroy relation to a/an org record.
   *
   * @return {Object}
   */

  destroyRelation: async (ctx, next) => {
    return strapi.services.org.removeRelation(ctx.params, ctx.request.body);
  }
};

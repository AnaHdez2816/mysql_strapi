'use strict';

/**
 * Organizaciones.js controller
 *
 * @description: A set of functions called "actions" for managing `Organizaciones`.
 */

module.exports = {

  /**
   * Retrieve organizaciones records.
   *
   * @return {Object|Array}
   */

  find: async (ctx) => {
    if (ctx.query._q) {
      return strapi.services.organizaciones.search(ctx.query);
    } else {
      return strapi.services.organizaciones.fetchAll(ctx.query);
    }
  },

  /**
   * Retrieve a organizaciones record.
   *
   * @return {Object}
   */

  findOne: async (ctx) => {
    return strapi.services.organizaciones.fetch(ctx.params);
  },

  /**
   * Count organizaciones records.
   *
   * @return {Number}
   */

  count: async (ctx) => {
    return strapi.services.organizaciones.count(ctx.query);
  },

  /**
   * Create a/an organizaciones record.
   *
   * @return {Object}
   */

  create: async (ctx) => {
    return strapi.services.organizaciones.add(ctx.request.body);
  },

  /**
   * Update a/an organizaciones record.
   *
   * @return {Object}
   */

  update: async (ctx, next) => {
    return strapi.services.organizaciones.edit(ctx.params, ctx.request.body) ;
  },

  /**
   * Destroy a/an organizaciones record.
   *
   * @return {Object}
   */

  destroy: async (ctx, next) => {
    return strapi.services.organizaciones.remove(ctx.params);
  },

  /**
   * Add relation to a/an organizaciones record.
   *
   * @return {Object}
   */

  createRelation: async (ctx, next) => {
    return strapi.services.organizaciones.addRelation(ctx.params, ctx.request.body);
  },

  /**
   * Update relation to a/an organizaciones record.
   *
   * @return {Object}
   */

  updateRelation: async (ctx, next) => {
    return strapi.services.organizaciones.editRelation(ctx.params, ctx.request.body);
  },

  /**
   * Destroy relation to a/an organizaciones record.
   *
   * @return {Object}
   */

  destroyRelation: async (ctx, next) => {
    return strapi.services.organizaciones.removeRelation(ctx.params, ctx.request.body);
  }
};

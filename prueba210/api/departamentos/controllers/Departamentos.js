'use strict';

/**
 * Departamentos.js controller
 *
 * @description: A set of functions called "actions" for managing `Departamentos`.
 */

module.exports = {

  /**
   * Retrieve departamentos records.
   *
   * @return {Object|Array}
   */

  find: async (ctx) => {
    if (ctx.query._q) {
      return strapi.services.departamentos.search(ctx.query);
    } else {
      return strapi.services.departamentos.fetchAll(ctx.query);
    }
  },

  /**
   * Retrieve a departamentos record.
   *
   * @return {Object}
   */

  findOne: async (ctx) => {
    return strapi.services.departamentos.fetch(ctx.params);
  },

  /**
   * Count departamentos records.
   *
   * @return {Number}
   */

  count: async (ctx) => {
    return strapi.services.departamentos.count(ctx.query);
  },

  /**
   * Create a/an departamentos record.
   *
   * @return {Object}
   */

  create: async (ctx) => {
    return strapi.services.departamentos.add(ctx.request.body);
  },

  /**
   * Update a/an departamentos record.
   *
   * @return {Object}
   */

  update: async (ctx, next) => {
    return strapi.services.departamentos.edit(ctx.params, ctx.request.body) ;
  },

  /**
   * Destroy a/an departamentos record.
   *
   * @return {Object}
   */

  destroy: async (ctx, next) => {
    return strapi.services.departamentos.remove(ctx.params);
  },

  /**
   * Add relation to a/an departamentos record.
   *
   * @return {Object}
   */

  createRelation: async (ctx, next) => {
    return strapi.services.departamentos.addRelation(ctx.params, ctx.request.body);
  },

  /**
   * Update relation to a/an departamentos record.
   *
   * @return {Object}
   */

  updateRelation: async (ctx, next) => {
    return strapi.services.departamentos.editRelation(ctx.params, ctx.request.body);
  },

  /**
   * Destroy relation to a/an departamentos record.
   *
   * @return {Object}
   */

  destroyRelation: async (ctx, next) => {
    return strapi.services.departamentos.removeRelation(ctx.params, ctx.request.body);
  }
};

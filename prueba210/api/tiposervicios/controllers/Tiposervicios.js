'use strict';

/**
 * Tiposervicios.js controller
 *
 * @description: A set of functions called "actions" for managing `Tiposervicios`.
 */

module.exports = {

  /**
   * Retrieve tiposervicios records.
   *
   * @return {Object|Array}
   */

  find: async (ctx) => {
    if (ctx.query._q) {
      return strapi.services.tiposervicios.search(ctx.query);
    } else {
      return strapi.services.tiposervicios.fetchAll(ctx.query);
    }
  },

  /**
   * Retrieve a tiposervicios record.
   *
   * @return {Object}
   */

  findOne: async (ctx) => {
    return strapi.services.tiposervicios.fetch(ctx.params);
  },

  /**
   * Count tiposervicios records.
   *
   * @return {Number}
   */

  count: async (ctx) => {
    return strapi.services.tiposervicios.count(ctx.query);
  },

  /**
   * Create a/an tiposervicios record.
   *
   * @return {Object}
   */

  create: async (ctx) => {
    return strapi.services.tiposervicios.add(ctx.request.body);
  },

  /**
   * Update a/an tiposervicios record.
   *
   * @return {Object}
   */

  update: async (ctx, next) => {
    return strapi.services.tiposervicios.edit(ctx.params, ctx.request.body) ;
  },

  /**
   * Destroy a/an tiposervicios record.
   *
   * @return {Object}
   */

  destroy: async (ctx, next) => {
    return strapi.services.tiposervicios.remove(ctx.params);
  },

  /**
   * Add relation to a/an tiposervicios record.
   *
   * @return {Object}
   */

  createRelation: async (ctx, next) => {
    return strapi.services.tiposervicios.addRelation(ctx.params, ctx.request.body);
  },

  /**
   * Update relation to a/an tiposervicios record.
   *
   * @return {Object}
   */

  updateRelation: async (ctx, next) => {
    return strapi.services.tiposervicios.editRelation(ctx.params, ctx.request.body);
  },

  /**
   * Destroy relation to a/an tiposervicios record.
   *
   * @return {Object}
   */

  destroyRelation: async (ctx, next) => {
    return strapi.services.tiposervicios.removeRelation(ctx.params, ctx.request.body);
  }
};

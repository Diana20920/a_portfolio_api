# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
include FactoryBot::Syntax::Methods

Space.destroy_all
Site.destroy_all
Portfolio.destroy_all
Entity.destroy_all

@entity1 = create(:entity)
@entity2 = create(:entity)
@entity3 = create(:entity)
@entity4 = create(:entity)
@entity5 = create(:entity)

@portfolio1 = create(:portfolio, entity_id: @entity1.id)
@portfolio2 = create(:portfolio, entity_id: @entity1.id)
@portfolio3 = create(:portfolio, entity_id: @entity1.id)
@portfolio4 = create(:portfolio, entity_id: @entity2.id)
@portfolio5 = create(:portfolio, entity_id: @entity2.id)
@portfolio6 = create(:portfolio, entity_id: @entity2.id)
# @entity3 will hold 0 porfolios
@portfolio7 = create(:portfolio, entity_id: @entity4.id)
@portfolio8 = create(:portfolio, entity_id: @entity4.id)
@portfolio9 = create(:portfolio, entity_id: @entity5.id)

@site1 = create(:site, portfolio_id: @portfolio1.id)
@site2 = create(:site, portfolio_id: @portfolio1.id)
@site3 = create(:site, portfolio_id: @portfolio2.id)
@site4 = create(:site, portfolio_id: @portfolio3.id)
@site5 = create(:site, portfolio_id: @portfolio3.id)
@site6 = create(:site, portfolio_id: @portfolio4.id)
@site7 = create(:site, portfolio_id: @portfolio5.id)
@site8 = create(:site, portfolio_id: @portfolio5.id)
@site9 = create(:site, portfolio_id: @portfolio6.id)
@site10 = create(:site, portfolio_id: @portfolio7.id)
@site11 = create(:site, portfolio_id: @portfolio7.id)
@site12 = create(:site, portfolio_id: @portfolio7.id)
@site13 = create(:site, portfolio_id: @portfolio7.id)
@site14 = create(:site, portfolio_id: @portfolio8.id)
@site15 = create(:site, portfolio_id: @portfolio8.id)
@site16 = create(:site, portfolio_id: @portfolio9.id)
@site17 = create(:site, portfolio_id: @portfolio9.id)
@site18 = create(:site, portfolio_id: @portfolio9.id)
@site19 = create(:site, portfolio_id: @portfolio9.id)
@site20 = create(:site, portfolio_id: @portfolio9.id)

# each site will have one space, except for site20.
# site20 will hold 6 spaces.
@space1 = create(:space, site_id: @site1.id)
@space2 = create(:space, site_id: @site2.id)
@space3 = create(:space, site_id: @site3.id)
@space4 = create(:space, site_id: @site4.id)
@space5 = create(:space, site_id: @site5.id)
@space6 = create(:space, site_id: @site6.id)
@space7 = create(:space, site_id: @site7.id)
@space8 = create(:space, site_id: @site8.id)
@space9 = create(:space, site_id: @site9.id)
@space10 = create(:space, site_id: @site10.id)
@space11 = create(:space, site_id: @site11.id)
@space12 = create(:space, site_id: @site12.id)
@space13 = create(:space, site_id: @site13.id)
@space14 = create(:space, site_id: @site14.id)
@space15 = create(:space, site_id: @site15.id)
@space16 = create(:space, site_id: @site16.id)
@space17 = create(:space, site_id: @site17.id)
@space18 = create(:space, site_id: @site18.id)
@space19 = create(:space, site_id: @site19.id)
@space20 = create(:space, site_id: @site20.id)
@space21 = create(:space, site_id: @site20.id)
@space22 = create(:space, site_id: @site20.id)
@space23 = create(:space, site_id: @site20.id)
@space24 = create(:space, site_id: @site20.id)
@space25 = create(:space, site_id: @site20.id)

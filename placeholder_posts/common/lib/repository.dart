abstract class Repository<IdType, EntityType> {
  Future<int> create(EntityType entity);

  Future<EntityType> retrieve(IdType id);

  Future<List<EntityType>> retrieveAll();

  Future<bool> update(IdType id, EntityType entity);

  Future<bool> delete(IdType id);
}

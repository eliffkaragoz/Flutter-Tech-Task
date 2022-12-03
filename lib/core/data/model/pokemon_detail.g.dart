// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_detail.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PokemonDetailModelAdapter extends TypeAdapter<PokemonDetailModel> {
  @override
  final int typeId = 0;

  @override
  PokemonDetailModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PokemonDetailModel(
      abilities: (fields[0] as List).cast<Ability>(),
      baseExperience: fields[1] as int,
      forms: (fields[2] as List).cast<Species>(),
      gameIndices: (fields[3] as List).cast<GameIndex>(),
      height: fields[4] as int,
      heldItems: (fields[5] as List).cast<dynamic>(),
      id: fields[6] as int,
      isDefault: fields[7] as bool,
      locationAreaEncounters: fields[8] as String,
      moves: (fields[9] as List).cast<Move>(),
      name: fields[10] as String,
      order: fields[11] as int,
      pastTypes: (fields[12] as List).cast<dynamic>(),
      species: fields[13] as Species,
      sprites: fields[14] as Sprites,
      stats: (fields[15] as List).cast<Stat>(),
      types: (fields[16] as List).cast<Type>(),
      weight: fields[17] as int,
    );
  }

  @override
  void write(BinaryWriter writer, PokemonDetailModel obj) {
    writer
      ..writeByte(18)
      ..writeByte(0)
      ..write(obj.abilities)
      ..writeByte(1)
      ..write(obj.baseExperience)
      ..writeByte(2)
      ..write(obj.forms)
      ..writeByte(3)
      ..write(obj.gameIndices)
      ..writeByte(4)
      ..write(obj.height)
      ..writeByte(5)
      ..write(obj.heldItems)
      ..writeByte(6)
      ..write(obj.id)
      ..writeByte(7)
      ..write(obj.isDefault)
      ..writeByte(8)
      ..write(obj.locationAreaEncounters)
      ..writeByte(9)
      ..write(obj.moves)
      ..writeByte(10)
      ..write(obj.name)
      ..writeByte(11)
      ..write(obj.order)
      ..writeByte(12)
      ..write(obj.pastTypes)
      ..writeByte(13)
      ..write(obj.species)
      ..writeByte(14)
      ..write(obj.sprites)
      ..writeByte(15)
      ..write(obj.stats)
      ..writeByte(16)
      ..write(obj.types)
      ..writeByte(17)
      ..write(obj.weight);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PokemonDetailModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class AbilityAdapter extends TypeAdapter<Ability> {
  @override
  final int typeId = 1;

  @override
  Ability read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Ability(
      ability: fields[0] as Species,
      isHidden: fields[1] as bool,
      slot: fields[2] as int,
    );
  }

  @override
  void write(BinaryWriter writer, Ability obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.ability)
      ..writeByte(1)
      ..write(obj.isHidden)
      ..writeByte(2)
      ..write(obj.slot);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AbilityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class SpeciesAdapter extends TypeAdapter<Species> {
  @override
  final int typeId = 2;

  @override
  Species read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Species(
      name: fields[0] as String,
      url: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Species obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.url);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SpeciesAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class GameIndexAdapter extends TypeAdapter<GameIndex> {
  @override
  final int typeId = 3;

  @override
  GameIndex read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return GameIndex(
      gameIndex: fields[0] as int,
      version: fields[1] as Species,
    );
  }

  @override
  void write(BinaryWriter writer, GameIndex obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.gameIndex)
      ..writeByte(1)
      ..write(obj.version);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GameIndexAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class MoveAdapter extends TypeAdapter<Move> {
  @override
  final int typeId = 4;

  @override
  Move read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Move(
      move: fields[0] as Species,
      versionGroupDetails: (fields[1] as List).cast<VersionGroupDetail>(),
    );
  }

  @override
  void write(BinaryWriter writer, Move obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.move)
      ..writeByte(1)
      ..write(obj.versionGroupDetails);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MoveAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class VersionGroupDetailAdapter extends TypeAdapter<VersionGroupDetail> {
  @override
  final int typeId = 5;

  @override
  VersionGroupDetail read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return VersionGroupDetail(
      levelLearnedAt: fields[0] as int,
      moveLearnMethod: fields[1] as Species,
      versionGroup: fields[2] as Species,
    );
  }

  @override
  void write(BinaryWriter writer, VersionGroupDetail obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.levelLearnedAt)
      ..writeByte(1)
      ..write(obj.moveLearnMethod)
      ..writeByte(2)
      ..write(obj.versionGroup);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is VersionGroupDetailAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class GenerationVAdapter extends TypeAdapter<GenerationV> {
  @override
  final int typeId = 6;

  @override
  GenerationV read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return GenerationV(
      blackWhite: fields[0] as Sprites,
    );
  }

  @override
  void write(BinaryWriter writer, GenerationV obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.blackWhite);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GenerationVAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class GenerationIvAdapter extends TypeAdapter<GenerationIv> {
  @override
  final int typeId = 7;

  @override
  GenerationIv read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return GenerationIv(
      diamondPearl: fields[0] as Sprites,
      heartgoldSoulsilver: fields[1] as Sprites,
      platinum: fields[2] as Sprites,
    );
  }

  @override
  void write(BinaryWriter writer, GenerationIv obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.diamondPearl)
      ..writeByte(1)
      ..write(obj.heartgoldSoulsilver)
      ..writeByte(2)
      ..write(obj.platinum);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GenerationIvAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class VersionsAdapter extends TypeAdapter<Versions> {
  @override
  final int typeId = 8;

  @override
  Versions read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Versions(
      generationI: fields[0] as GenerationI,
      generationIi: fields[1] as GenerationIi,
      generationIii: fields[2] as GenerationIii,
      generationIv: fields[3] as GenerationIv,
      generationV: fields[4] as GenerationV,
      generationVi: (fields[5] as Map).cast<String, Home>(),
      generationVii: fields[6] as GenerationVii,
      generationViii: fields[7] as GenerationViii,
    );
  }

  @override
  void write(BinaryWriter writer, Versions obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.generationI)
      ..writeByte(1)
      ..write(obj.generationIi)
      ..writeByte(2)
      ..write(obj.generationIii)
      ..writeByte(3)
      ..write(obj.generationIv)
      ..writeByte(4)
      ..write(obj.generationV)
      ..writeByte(5)
      ..write(obj.generationVi)
      ..writeByte(6)
      ..write(obj.generationVii)
      ..writeByte(7)
      ..write(obj.generationViii);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is VersionsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class SpritesAdapter extends TypeAdapter<Sprites> {
  @override
  final int typeId = 9;

  @override
  Sprites read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Sprites(
      backDefault: fields[0] as String,
      backFemale: fields[1] as dynamic,
      backShiny: fields[2] as String,
      backShinyFemale: fields[3] as dynamic,
      frontDefault: fields[4] as String,
      frontFemale: fields[5] as dynamic,
      frontShiny: fields[6] as String,
      frontShinyFemale: fields[7] as dynamic,
      other: fields[8] as Other?,
      versions: fields[9] as Versions?,
      animated: fields[10] as Sprites?,
    );
  }

  @override
  void write(BinaryWriter writer, Sprites obj) {
    writer
      ..writeByte(11)
      ..writeByte(0)
      ..write(obj.backDefault)
      ..writeByte(1)
      ..write(obj.backFemale)
      ..writeByte(2)
      ..write(obj.backShiny)
      ..writeByte(3)
      ..write(obj.backShinyFemale)
      ..writeByte(4)
      ..write(obj.frontDefault)
      ..writeByte(5)
      ..write(obj.frontFemale)
      ..writeByte(6)
      ..write(obj.frontShiny)
      ..writeByte(7)
      ..write(obj.frontShinyFemale)
      ..writeByte(8)
      ..write(obj.other)
      ..writeByte(9)
      ..write(obj.versions)
      ..writeByte(10)
      ..write(obj.animated);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SpritesAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class GenerationIAdapter extends TypeAdapter<GenerationI> {
  @override
  final int typeId = 10;

  @override
  GenerationI read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return GenerationI(
      redBlue: fields[0] as RedBlue,
      yellow: fields[1] as RedBlue,
    );
  }

  @override
  void write(BinaryWriter writer, GenerationI obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.redBlue)
      ..writeByte(1)
      ..write(obj.yellow);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GenerationIAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class RedBlueAdapter extends TypeAdapter<RedBlue> {
  @override
  final int typeId = 11;

  @override
  RedBlue read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return RedBlue(
      backDefault: fields[0] as String,
      backGray: fields[1] as String,
      backTransparent: fields[2] as String,
      frontDefault: fields[3] as String,
      frontGray: fields[4] as String,
      frontTransparent: fields[5] as String,
    );
  }

  @override
  void write(BinaryWriter writer, RedBlue obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.backDefault)
      ..writeByte(1)
      ..write(obj.backGray)
      ..writeByte(2)
      ..write(obj.backTransparent)
      ..writeByte(3)
      ..write(obj.frontDefault)
      ..writeByte(4)
      ..write(obj.frontGray)
      ..writeByte(5)
      ..write(obj.frontTransparent);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is RedBlueAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class GenerationIiAdapter extends TypeAdapter<GenerationIi> {
  @override
  final int typeId = 12;

  @override
  GenerationIi read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return GenerationIi(
      crystal: fields[0] as Crystal,
      gold: fields[1] as Gold,
      silver: fields[2] as Gold,
    );
  }

  @override
  void write(BinaryWriter writer, GenerationIi obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.crystal)
      ..writeByte(1)
      ..write(obj.gold)
      ..writeByte(2)
      ..write(obj.silver);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GenerationIiAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class CrystalAdapter extends TypeAdapter<Crystal> {
  @override
  final int typeId = 13;

  @override
  Crystal read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Crystal(
      backDefault: fields[0] as String,
      backShiny: fields[1] as String,
      backShinyTransparent: fields[2] as String,
      backTransparent: fields[3] as String,
      frontDefault: fields[4] as String,
      frontShiny: fields[5] as String,
      frontShinyTransparent: fields[6] as String,
      frontTransparent: fields[7] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Crystal obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.backDefault)
      ..writeByte(1)
      ..write(obj.backShiny)
      ..writeByte(2)
      ..write(obj.backShinyTransparent)
      ..writeByte(3)
      ..write(obj.backTransparent)
      ..writeByte(4)
      ..write(obj.frontDefault)
      ..writeByte(5)
      ..write(obj.frontShiny)
      ..writeByte(6)
      ..write(obj.frontShinyTransparent)
      ..writeByte(7)
      ..write(obj.frontTransparent);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CrystalAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class GoldAdapter extends TypeAdapter<Gold> {
  @override
  final int typeId = 14;

  @override
  Gold read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Gold(
      backDefault: fields[0] as String,
      backShiny: fields[1] as String,
      frontDefault: fields[2] as String,
      frontShiny: fields[3] as String,
      frontTransparent: fields[4] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Gold obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.backDefault)
      ..writeByte(1)
      ..write(obj.backShiny)
      ..writeByte(2)
      ..write(obj.frontDefault)
      ..writeByte(3)
      ..write(obj.frontShiny)
      ..writeByte(4)
      ..write(obj.frontTransparent);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GoldAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class GenerationIiiAdapter extends TypeAdapter<GenerationIii> {
  @override
  final int typeId = 15;

  @override
  GenerationIii read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return GenerationIii(
      emerald: fields[0] as Emerald,
      fireredLeafgreen: fields[1] as Gold,
      rubySapphire: fields[2] as Gold,
    );
  }

  @override
  void write(BinaryWriter writer, GenerationIii obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.emerald)
      ..writeByte(1)
      ..write(obj.fireredLeafgreen)
      ..writeByte(2)
      ..write(obj.rubySapphire);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GenerationIiiAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class EmeraldAdapter extends TypeAdapter<Emerald> {
  @override
  final int typeId = 16;

  @override
  Emerald read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Emerald(
      frontDefault: fields[0] as String,
      frontShiny: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Emerald obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.frontDefault)
      ..writeByte(1)
      ..write(obj.frontShiny);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EmeraldAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class HomeAdapter extends TypeAdapter<Home> {
  @override
  final int typeId = 17;

  @override
  Home read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Home(
      frontDefault: fields[0] as String,
      frontFemale: fields[1] as dynamic,
      frontShiny: fields[2] as String,
      frontShinyFemale: fields[3] as dynamic,
    );
  }

  @override
  void write(BinaryWriter writer, Home obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.frontDefault)
      ..writeByte(1)
      ..write(obj.frontFemale)
      ..writeByte(2)
      ..write(obj.frontShiny)
      ..writeByte(3)
      ..write(obj.frontShinyFemale);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HomeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class GenerationViiAdapter extends TypeAdapter<GenerationVii> {
  @override
  final int typeId = 18;

  @override
  GenerationVii read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return GenerationVii(
      icons: fields[0] as DreamWorld,
      ultraSunUltraMoon: fields[1] as Home,
    );
  }

  @override
  void write(BinaryWriter writer, GenerationVii obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.icons)
      ..writeByte(1)
      ..write(obj.ultraSunUltraMoon);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GenerationViiAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class DreamWorldAdapter extends TypeAdapter<DreamWorld> {
  @override
  final int typeId = 19;

  @override
  DreamWorld read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DreamWorld(
      frontDefault: fields[0] as String,
      frontFemale: fields[1] as dynamic,
    );
  }

  @override
  void write(BinaryWriter writer, DreamWorld obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.frontDefault)
      ..writeByte(1)
      ..write(obj.frontFemale);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DreamWorldAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class GenerationViiiAdapter extends TypeAdapter<GenerationViii> {
  @override
  final int typeId = 20;

  @override
  GenerationViii read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return GenerationViii(
      icons: fields[0] as DreamWorld,
    );
  }

  @override
  void write(BinaryWriter writer, GenerationViii obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.icons);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GenerationViiiAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class OtherAdapter extends TypeAdapter<Other> {
  @override
  final int typeId = 21;

  @override
  Other read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Other(
      dreamWorld: fields[0] as DreamWorld,
      home: fields[1] as Home,
      officialArtwork: fields[2] as OfficialArtwork,
    );
  }

  @override
  void write(BinaryWriter writer, Other obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.dreamWorld)
      ..writeByte(1)
      ..write(obj.home)
      ..writeByte(2)
      ..write(obj.officialArtwork);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OtherAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class OfficialArtworkAdapter extends TypeAdapter<OfficialArtwork> {
  @override
  final int typeId = 22;

  @override
  OfficialArtwork read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return OfficialArtwork(
      frontDefault: fields[0] as String,
    );
  }

  @override
  void write(BinaryWriter writer, OfficialArtwork obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.frontDefault);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OfficialArtworkAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class StatAdapter extends TypeAdapter<Stat> {
  @override
  final int typeId = 23;

  @override
  Stat read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Stat(
      baseStat: fields[0] as int,
      effort: fields[1] as int,
      stat: fields[2] as Species,
    );
  }

  @override
  void write(BinaryWriter writer, Stat obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.baseStat)
      ..writeByte(1)
      ..write(obj.effort)
      ..writeByte(2)
      ..write(obj.stat);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StatAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class MyTypeAdapter extends TypeAdapter<Type> {
  @override
  final int typeId = 24;

  @override
  Type read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Type(
      slot: fields[0] as int,
      type: fields[1] as Species,
    );
  }

  @override
  void write(BinaryWriter writer, Type obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.slot)
      ..writeByte(1)
      ..write(obj.type);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MyTypeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

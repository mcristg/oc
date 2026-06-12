%{
#include <Graphic3d_MaterialAspect.hxx>
%}

enum Graphic3d_NameOfMaterial
{
  Graphic3d_NameOfMaterial_Brass,           //!< Brass        (Physic)
  Graphic3d_NameOfMaterial_Bronze,          //!< Bronze       (Physic)
  Graphic3d_NameOfMaterial_Copper,          //!< Copper       (Physic)
  Graphic3d_NameOfMaterial_Gold,            //!< Gold         (Physic)
  Graphic3d_NameOfMaterial_Pewter,          //!< Pewter       (Physic)
  Graphic3d_NameOfMaterial_Plastered,       //!< Plastered    (Generic)
  Graphic3d_NameOfMaterial_Plastified,      //!< Plastified   (Generic)
  Graphic3d_NameOfMaterial_Silver,          //!< Silver       (Physic)
  Graphic3d_NameOfMaterial_Steel,           //!< Steel        (Physic)
  Graphic3d_NameOfMaterial_Stone,           //!< Stone        (Physic)
  Graphic3d_NameOfMaterial_ShinyPlastified, //!< Shiny Plastified (Generic)
  Graphic3d_NameOfMaterial_Satin,           //!< Satin        (Generic)
  Graphic3d_NameOfMaterial_Metalized,       //!< Metalized    (Generic)
  Graphic3d_NameOfMaterial_Ionized,         //!< Ionized      (Generic)
  Graphic3d_NameOfMaterial_Chrome,          //!< Chrome       (Physic)
  Graphic3d_NameOfMaterial_Aluminum,        //!< Aluminum     (Physic)
  Graphic3d_NameOfMaterial_Obsidian,        //!< Obsidian     (Physic)
  Graphic3d_NameOfMaterial_Neon,            //!< Neon         (Physic)
  Graphic3d_NameOfMaterial_Jade,            //!< Jade         (Physic)
  Graphic3d_NameOfMaterial_Charcoal,        //!< Charcoal     (Physic)
  Graphic3d_NameOfMaterial_Water,           //!< Water        (Physic)
  Graphic3d_NameOfMaterial_Glass,           //!< Glass        (Physic)
  Graphic3d_NameOfMaterial_Diamond,         //!< Diamond      (Physic)
  Graphic3d_NameOfMaterial_Transparent,     //!< Transparent  (Physic)
  Graphic3d_NameOfMaterial_DEFAULT,         //!< Default      (Generic);
                                    //!  normally used as out-of-range value pointing to some
                                    //!  application default
  Graphic3d_NameOfMaterial_UserDefined, //!< User-defined (Physic);
                                        //!  used for any material with non-standard definition

  // old aliases
  Graphic3d_NOM_BRASS         = Graphic3d_NameOfMaterial_Brass,
  Graphic3d_NOM_BRONZE        = Graphic3d_NameOfMaterial_Bronze,
  Graphic3d_NOM_COPPER        = Graphic3d_NameOfMaterial_Copper,
  Graphic3d_NOM_GOLD          = Graphic3d_NameOfMaterial_Gold,
  Graphic3d_NOM_PEWTER        = Graphic3d_NameOfMaterial_Pewter,
  Graphic3d_NOM_PLASTER       = Graphic3d_NameOfMaterial_Plastered,
  Graphic3d_NOM_PLASTIC       = Graphic3d_NameOfMaterial_Plastified,
  Graphic3d_NOM_SILVER        = Graphic3d_NameOfMaterial_Silver,
  Graphic3d_NOM_STEEL         = Graphic3d_NameOfMaterial_Steel,
  Graphic3d_NOM_STONE         = Graphic3d_NameOfMaterial_Stone,
  Graphic3d_NOM_SHINY_PLASTIC = Graphic3d_NameOfMaterial_ShinyPlastified,
  Graphic3d_NOM_SATIN         = Graphic3d_NameOfMaterial_Satin,
  Graphic3d_NOM_METALIZED     = Graphic3d_NameOfMaterial_Metalized,
  Graphic3d_NOM_NEON_GNC      = Graphic3d_NameOfMaterial_Ionized,
  Graphic3d_NOM_CHROME        = Graphic3d_NameOfMaterial_Chrome,
  Graphic3d_NOM_ALUMINIUM     = Graphic3d_NameOfMaterial_Aluminum,
  Graphic3d_NOM_OBSIDIAN      = Graphic3d_NameOfMaterial_Obsidian,
  Graphic3d_NOM_NEON_PHC      = Graphic3d_NameOfMaterial_Neon,
  Graphic3d_NOM_JADE          = Graphic3d_NameOfMaterial_Jade,
  Graphic3d_NOM_CHARCOAL      = Graphic3d_NameOfMaterial_Charcoal,
  Graphic3d_NOM_WATER         = Graphic3d_NameOfMaterial_Water,
  Graphic3d_NOM_GLASS         = Graphic3d_NameOfMaterial_Glass,
  Graphic3d_NOM_DIAMOND       = Graphic3d_NameOfMaterial_Diamond,
  Graphic3d_NOM_TRANSPARENT   = Graphic3d_NameOfMaterial_Transparent,
  Graphic3d_NOM_DEFAULT       = Graphic3d_NameOfMaterial_DEFAULT,
  Graphic3d_NOM_UserDefined   = Graphic3d_NameOfMaterial_UserDefined
};

enum Graphic3d_FresnelModel
{
  Graphic3d_FM_SCHLICK    = 0,
  Graphic3d_FM_CONSTANT   = 1,
  Graphic3d_FM_CONDUCTOR  = 2,
  Graphic3d_FM_DIELECTRIC = 3
};

enum Graphic3d_TypeOfReflection
{
  Graphic3d_TOR_AMBIENT = 0,
  Graphic3d_TOR_DIFFUSE,
  Graphic3d_TOR_SPECULAR,
  Graphic3d_TOR_EMISSION
};

class Graphic3d_Fresnel
{
public:
  Graphic3d_Fresnel();
  NCollection_Vec4< float > Serialize() const;
  Graphic3d_FresnelModel FresnelType() const;
  static Graphic3d_Fresnel CreateSchlick (const NCollection_Vec3< float > &theSpecularColor);
  static Graphic3d_Fresnel CreateConstant (const float theReflection);
  static Graphic3d_Fresnel CreateDielectric (float theRefractionIndex);
  static Graphic3d_Fresnel CreateConductor (float theRefractionIndex, float theAbsorptionIndex);
  static Graphic3d_Fresnel CreateConductor (const NCollection_Vec3< float > &theRefractionIndex, const NCollection_Vec3< float > &theAbsorptionIndex);
};



class Graphic3d_MaterialAspect
{
public:
  Graphic3d_MaterialAspect();
  Graphic3d_MaterialAspect(const Graphic3d_NameOfMaterial theName);
  Graphic3d_NameOfMaterial Name() const;
  Graphic3d_NameOfMaterial RequestedName() const;
  const TCollection_AsciiString &StringName() const;
  const char* MaterialName() const;
  void SetMaterialName(const TCollection_AsciiString &theName);
  void Reset(); 
  const Quantity_Color &Color() const;
  void SetColor(const Quantity_Color &theColor);
  float Transparency() const;
  float Alpha() const;
  void SetTransparency(const float theValue);
  void SetAlpha (float theValue);
  const Quantity_Color &AmbientColor() const;
  void SetAmbientColor(const Quantity_Color &theColor); 
  const Quantity_Color &DiffuseColor() const; 
  void SetDiffuseColor(const Quantity_Color &theColor);
  const Quantity_Color &SpecularColor() const;
  void SetSpecularColor(const Quantity_Color &theColor);
  const Quantity_Color &EmissiveColor() const;
  void SetEmissiveColor(const Quantity_Color &theColor);
  float Shininess() const;
  void SetShininess(const float theValue);
  void IncreaseShine(const float theDelta);
  float RefractionIndex() const;
  void SetRefractionIndex(const float theValue);
  const Graphic3d_BSDF &BSDF() const;
  void SetBSDF(const Graphic3d_BSDF &theBSDF);
  const Graphic3d_PBRMaterial &PBRMaterial() const;
  void SetPBRMaterial(const Graphic3d_PBRMaterial &thePBRMaterial);
  bool ReflectionMode(const Graphic3d_TypeOfReflection theType) const;
  Graphic3d_TypeOfMaterial MaterialType() const;
  bool MaterialType(const Graphic3d_TypeOfMaterial theType) const;
  void SetMaterialType (const Graphic3d_TypeOfMaterial theType);
  bool IsDifferent (const Graphic3d_MaterialAspect &theOther) const;
  bool IsEqual(const Graphic3d_MaterialAspect &theOther) const;
  static int NumberOfMaterials ();
  static const char* MaterialName(const int theRank);
  static Graphic3d_TypeOfMaterial MaterialType(const int theRank);
  static bool 	MaterialFromName(const char *const theName, Graphic3d_NameOfMaterial &theMat);
  static Graphic3d_NameOfMaterial MaterialFromName(const char *const theName);
};


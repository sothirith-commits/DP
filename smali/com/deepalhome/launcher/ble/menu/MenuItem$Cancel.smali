.class public final Lcom/deepalhome/launcher/ble/menu/MenuItem$Cancel;
.super Lcom/deepalhome/launcher/ble/menu/MenuItem;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/ble/menu/MenuItem$Cancel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/ble/menu/MenuItem$Cancel;

    invoke-direct {v0}, Lcom/deepalhome/launcher/ble/menu/MenuItem$Cancel;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/ble/menu/MenuItem$Cancel;->INSTANCE:Lcom/deepalhome/launcher/ble/menu/MenuItem$Cancel;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/deepalhome/launcher/ble/menu/MenuItem;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final getIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    const p0, 0x7f130182

    const-string v0, "getString(...)"

    invoke-static {p0, v0}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

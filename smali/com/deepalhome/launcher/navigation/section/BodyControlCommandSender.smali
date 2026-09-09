.class public final Lcom/deepalhome/launcher/navigation/section/BodyControlCommandSender;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/navigation/section/BodyControlCommandSender;

.field private static final standardComponent:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/deepalhome/launcher/navigation/section/BodyControlCommandSender;

    invoke-direct {v0}, Lcom/deepalhome/launcher/navigation/section/BodyControlCommandSender;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/navigation/section/BodyControlCommandSender;->INSTANCE:Lcom/deepalhome/launcher/navigation/section/BodyControlCommandSender;

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.mega.carsettings"

    const-string v2, "com.mega.carsettings.mars.CarSettingsActionService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/deepalhome/launcher/navigation/section/BodyControlCommandSender;->standardComponent:Landroid/content/ComponentName;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final native buildEz6ParamsJson(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private final native sendOperation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method


# virtual methods
.method public final native openFuelCap()Z
.end method

.method public final native openGloveBox()Z
.end method

.method public final native setDoorHandleExpanded(Z)Z
.end method

.method public final native setMirrorFold(Z)Z
.end method

.method public final native setTrunk(Z)Z
.end method

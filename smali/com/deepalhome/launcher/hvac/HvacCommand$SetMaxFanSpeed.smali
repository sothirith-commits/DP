.class public final Lcom/deepalhome/launcher/hvac/HvacCommand$SetMaxFanSpeed;
.super Lcom/deepalhome/launcher/hvac/HvacCommand;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/hvac/HvacCommand$SetMaxFanSpeed;

.field public static final displayName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/hvac/HvacCommand$SetMaxFanSpeed;

    invoke-direct {v0}, Lcom/deepalhome/launcher/hvac/HvacCommand$SetMaxFanSpeed;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/hvac/HvacCommand$SetMaxFanSpeed;->INSTANCE:Lcom/deepalhome/launcher/hvac/HvacCommand$SetMaxFanSpeed;

    const-string v0, "Maximum fan speed"

    sput-object v0, Lcom/deepalhome/launcher/hvac/HvacCommand$SetMaxFanSpeed;->displayName:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const-string v0, "set_max_fan_speed"

    invoke-direct {p0, v0}, Lcom/deepalhome/launcher/hvac/HvacCommand;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getDisplayName()Ljava/lang/String;
    .locals 0

    sget-object p0, Lcom/deepalhome/launcher/hvac/HvacCommand$SetMaxFanSpeed;->displayName:Ljava/lang/String;

    return-object p0
.end method

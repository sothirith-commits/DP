.class public final Lcom/deepalhome/launcher/settings/SettingsSecretState;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/settings/SettingsSecretState;

.field public static final debugLogReveal:Lcom/deepalhome/launcher/settings/HiddenTapReveal;

.field public static final scheduledTaskMagiskReveal:Lcom/deepalhome/launcher/settings/HiddenTapReveal;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/deepalhome/launcher/settings/SettingsSecretState;

    invoke-direct {v0}, Lcom/deepalhome/launcher/settings/SettingsSecretState;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/settings/SettingsSecretState;->INSTANCE:Lcom/deepalhome/launcher/settings/SettingsSecretState;

    new-instance v0, Lcom/deepalhome/launcher/settings/HiddenTapReveal;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/settings/HiddenTapReveal;-><init>(I)V

    sput-object v0, Lcom/deepalhome/launcher/settings/SettingsSecretState;->debugLogReveal:Lcom/deepalhome/launcher/settings/HiddenTapReveal;

    new-instance v0, Lcom/deepalhome/launcher/settings/HiddenTapReveal;

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/settings/HiddenTapReveal;-><init>(I)V

    sput-object v0, Lcom/deepalhome/launcher/settings/SettingsSecretState;->scheduledTaskMagiskReveal:Lcom/deepalhome/launcher/settings/HiddenTapReveal;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

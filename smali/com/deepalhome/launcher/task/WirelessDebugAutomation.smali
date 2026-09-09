.class public final Lcom/deepalhome/launcher/task/WirelessDebugAutomation;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/task/WirelessDebugAutomation;

.field public static final autoAllowSceneWord:Lcom/deepalhome/launcher/task/SceneWordSpec;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/deepalhome/launcher/task/WirelessDebugAutomation;

    invoke-direct {v0}, Lcom/deepalhome/launcher/task/WirelessDebugAutomation;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/task/WirelessDebugAutomation;->INSTANCE:Lcom/deepalhome/launcher/task/WirelessDebugAutomation;

    new-instance v0, Lcom/deepalhome/launcher/task/SceneWordSpec;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v4, "Allow"

    const v2, 0xcfea2

    const/16 v3, 0xfc

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/deepalhome/launcher/task/SceneWordSpec;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/deepalhome/launcher/task/WirelessDebugAutomation;->autoAllowSceneWord:Lcom/deepalhome/launcher/task/SceneWordSpec;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native hasSecureSettingsPermission(Landroid/content/Context;)Z
.end method

.method public static native resolvePortCandidates(Landroid/app/Application;)Ljava/util/List;
.end method

.method public static native scheduleAutoAllow()V
.end method

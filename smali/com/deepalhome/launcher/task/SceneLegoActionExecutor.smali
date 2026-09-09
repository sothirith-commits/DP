.class public final Lcom/deepalhome/launcher/task/SceneLegoActionExecutor;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/task/SceneLegoActionExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/task/SceneLegoActionExecutor;

    invoke-direct {v0}, Lcom/deepalhome/launcher/task/SceneLegoActionExecutor;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/task/SceneLegoActionExecutor;->INSTANCE:Lcom/deepalhome/launcher/task/SceneLegoActionExecutor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native buildIntent(Ljava/lang/String;Lcom/deepalhome/launcher/task/SceneLegoActionRequest;)Landroid/content/Intent;
.end method

.method public static native execute(Lcom/deepalhome/launcher/task/SceneLegoActionRequest;)V
.end method

.class public final Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment$confirmDeleteSelected$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $deletableItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/deepalhome/launcher/floating/CachedIcon;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment$confirmDeleteSelected$1;->this$0:Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment;

    iput-object p2, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment$confirmDeleteSelected$1;->$deletableItems:Ljava/util/List;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment$confirmDeleteSelected$1;->this$0:Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment;

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment$confirmDeleteSelected$1;->$deletableItems:Ljava/util/List;

    sget v1, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment;->$r8$clinit:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, -0x2

    invoke-static {v1}, Lcom/blankj/utilcode/util/ThreadUtils;->getPoolByTypeAndPriority(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, v0}, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment$$ExternalSyntheticLambda4;-><init>(Ljava/util/List;Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

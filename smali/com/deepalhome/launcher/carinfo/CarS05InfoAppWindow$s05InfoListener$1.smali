.class public final Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$s05InfoListener$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$s05InfoListener$1;->this$0:Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;

    check-cast p2, Ljava/util/Set;

    const-string v0, "info"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "changedFields"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$s05InfoListener$1;->this$0:Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;

    iget-boolean v1, v0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->isViewVisibleToUser:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->bindChangedS05Info(Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;Ljava/util/Set;)V

    iget-object p2, p0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$s05InfoListener$1;->this$0:Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;

    iget-object p2, p2, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->pendingVisibleUiFields:Ljava/util/LinkedHashSet;

    invoke-virtual {p2}, Ljava/util/AbstractCollection;->clear()V

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->pendingVisibleUiFields:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p2}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    :goto_0
    iget-object p2, p0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$s05InfoListener$1;->this$0:Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;

    iget-object p2, p2, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->lastSrGearMode:Ljava/lang/String;

    iget-object v0, p1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->gearMode:Ljava/lang/String;

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p0, p0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$s05InfoListener$1;->this$0:Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;

    iget-object p2, p1, Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;->gearMode:Ljava/lang/String;

    iput-object p2, p0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->lastSrGearMode:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->updateCarSrState(Lcom/deepalhome/launcher/carinfo/CacheCarS05Info;)V

    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.class public final Lcom/petterp/floatingx/imp/system/FxSystemLifecycleImp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field public final helper:Lcom/petterp/floatingx/assist/helper/FxAppHelper;

.field public isNeedAskPermission:Z

.field public final provider:Lcom/petterp/floatingx/imp/system/FxSystemPlatformProvider;


# direct methods
.method public constructor <init>(Lcom/petterp/floatingx/assist/helper/FxAppHelper;Lcom/petterp/floatingx/imp/system/FxSystemPlatformProvider;)V
    .locals 1

    const-string v0, "helper"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/petterp/floatingx/imp/system/FxSystemLifecycleImp;->helper:Lcom/petterp/floatingx/assist/helper/FxAppHelper;

    iput-object p2, p0, Lcom/petterp/floatingx/imp/system/FxSystemLifecycleImp;->provider:Lcom/petterp/floatingx/imp/system/FxSystemPlatformProvider;

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/petterp/floatingx/imp/system/FxSystemLifecycleImp;->isNeedAskPermission:Z

    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    iget-boolean p1, p1, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->enableFx:Z

    iput-boolean p1, p0, Lcom/petterp/floatingx/imp/system/FxSystemLifecycleImp;->isNeedAskPermission:Z

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    const-string p2, "activity"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/petterp/floatingx/imp/system/FxSystemLifecycleImp;->helper:Lcom/petterp/floatingx/assist/helper/FxAppHelper;

    iget-boolean p1, p0, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->enableFx:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    const-string p0, "activity"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/petterp/floatingx/imp/system/FxSystemLifecycleImp;->helper:Lcom/petterp/floatingx/assist/helper/FxAppHelper;

    iget-boolean p1, p0, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->enableFx:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 7

    const-string v0, "activity"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/petterp/floatingx/imp/system/FxSystemLifecycleImp;->helper:Lcom/petterp/floatingx/assist/helper/FxAppHelper;

    iget-boolean v1, v0, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->enableFx:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "."

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-static {v1, v2, v4, v3}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;II)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->getFxLog$floatingx_release()Lcom/petterp/floatingx/util/FxLog;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "fxApp->insert, insert ["

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "] Start ---------->"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/petterp/floatingx/util/FxLog;->v(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/petterp/floatingx/assist/helper/FxAppHelper;->isCanInstall$floatingx_release(Landroid/app/Activity;)Z

    move-result v2

    iget-object v3, p0, Lcom/petterp/floatingx/imp/system/FxSystemLifecycleImp;->provider:Lcom/petterp/floatingx/imp/system/FxSystemPlatformProvider;

    if-eqz v2, :cond_5

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v3}, Lkotlin/io/TextStreamsKt;->isShow(Lcom/petterp/floatingx/listener/provider/IFxPlatformProvider;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Lcom/petterp/floatingx/imp/system/FxSystemPlatformProvider;->show()V

    :goto_0
    iget-boolean v1, p0, Lcom/petterp/floatingx/imp/system/FxSystemLifecycleImp;->isNeedAskPermission:Z

    if-eqz v1, :cond_4

    iput-boolean v4, p0, Lcom/petterp/floatingx/imp/system/FxSystemLifecycleImp;->isNeedAskPermission:Z

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v3, p1}, Lcom/petterp/floatingx/imp/system/FxSystemPlatformProvider;->internalAskAutoPermission$floatingx_release(Landroid/app/Activity;)V

    :cond_4
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void

    :cond_5
    if-nez v3, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {v3}, Lcom/petterp/floatingx/imp/system/FxSystemPlatformProvider;->hide$1()V

    :goto_2
    invoke-virtual {v0}, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->getFxLog$floatingx_release()Lcom/petterp/floatingx/util/FxLog;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] Fail ,This activity is not in the list of allowed inserts."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/petterp/floatingx/util/FxLog;->v(Ljava/lang/String;)V

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    const-string p0, "activity"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "outState"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/petterp/floatingx/imp/system/FxSystemLifecycleImp;->helper:Lcom/petterp/floatingx/assist/helper/FxAppHelper;

    iget-boolean p1, p0, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->enableFx:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/petterp/floatingx/imp/system/FxSystemLifecycleImp;->helper:Lcom/petterp/floatingx/assist/helper/FxAppHelper;

    iget-boolean p1, p0, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->enableFx:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

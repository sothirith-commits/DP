.class public final Lcom/petterp/floatingx/imp/system/FxSystemPlatformProvider$requestPermission$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic $canUseAppScope:Z

.field final synthetic $isAutoShow:Z

.field final synthetic $resultListener:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/petterp/floatingx/imp/system/FxSystemPlatformProvider;


# direct methods
.method public constructor <init>(Lcom/petterp/floatingx/imp/system/FxSystemPlatformProvider;Z)V
    .locals 0

    iput-object p1, p0, Lcom/petterp/floatingx/imp/system/FxSystemPlatformProvider$requestPermission$1;->this$0:Lcom/petterp/floatingx/imp/system/FxSystemPlatformProvider;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/petterp/floatingx/imp/system/FxSystemPlatformProvider$requestPermission$1;->$isAutoShow:Z

    iput-boolean p2, p0, Lcom/petterp/floatingx/imp/system/FxSystemPlatformProvider$requestPermission$1;->$canUseAppScope:Z

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/petterp/floatingx/imp/system/FxSystemPlatformProvider$requestPermission$1;->$resultListener:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/petterp/floatingx/imp/system/FxSystemPlatformProvider$requestPermission$1;->this$0:Lcom/petterp/floatingx/imp/system/FxSystemPlatformProvider;

    iget-object v1, v1, Lcom/petterp/floatingx/imp/system/FxSystemPlatformProvider;->helper:Lcom/petterp/floatingx/assist/helper/FxAppHelper;

    invoke-virtual {v1}, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->getFxLog$floatingx_release()Lcom/petterp/floatingx/util/FxLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "tag:["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/petterp/floatingx/imp/system/FxSystemPlatformProvider$requestPermission$1;->this$0:Lcom/petterp/floatingx/imp/system/FxSystemPlatformProvider;

    iget-object v4, v4, Lcom/petterp/floatingx/imp/system/FxSystemPlatformProvider;->helper:Lcom/petterp/floatingx/assist/helper/FxAppHelper;

    iget-object v4, v4, Lcom/petterp/floatingx/assist/helper/FxAppHelper;->tag:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] requestPermission end,result:$["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "]---->"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/petterp/floatingx/util/FxLog;->d(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/petterp/floatingx/imp/system/FxSystemPlatformProvider$requestPermission$1;->$isAutoShow:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/petterp/floatingx/imp/system/FxSystemPlatformProvider$requestPermission$1;->this$0:Lcom/petterp/floatingx/imp/system/FxSystemPlatformProvider;

    iget-object v0, v0, Lcom/petterp/floatingx/imp/system/FxSystemPlatformProvider;->control:Lcom/petterp/floatingx/imp/app/FxAppControlImp;

    invoke-virtual {v0}, Lcom/petterp/floatingx/imp/app/FxAppControlImp;->show()V

    goto :goto_1

    :cond_0
    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/petterp/floatingx/imp/system/FxSystemPlatformProvider$requestPermission$1;->$canUseAppScope:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/petterp/floatingx/imp/system/FxSystemPlatformProvider$requestPermission$1;->this$0:Lcom/petterp/floatingx/imp/system/FxSystemPlatformProvider;

    iget-object v0, v0, Lcom/petterp/floatingx/imp/system/FxSystemPlatformProvider;->control:Lcom/petterp/floatingx/imp/app/FxAppControlImp;

    iget-object v0, v0, Lcom/petterp/floatingx/imp/app/FxAppControlImp;->helper:Lcom/petterp/floatingx/assist/helper/FxBasisHelper;

    check-cast v0, Lcom/petterp/floatingx/assist/helper/FxAppHelper;

    invoke-virtual {v0}, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->getFxLog$floatingx_release()Lcom/petterp/floatingx/util/FxLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/petterp/floatingx/assist/helper/FxAppHelper;->tag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] auto downgrade to app activity scope!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "message"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v3, v1, Lcom/petterp/floatingx/util/FxLog;->enable:Z

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, v1, Lcom/petterp/floatingx/util/FxLog;->tag:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    sget-object v1, Lcom/petterp/floatingx/assist/FxScopeType;->APP:Lcom/petterp/floatingx/assist/FxScopeType;

    const-string v2, "<set-?>"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/petterp/floatingx/assist/helper/FxAppHelper;->scope:Lcom/petterp/floatingx/assist/FxScopeType;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->reInstall:Z

    invoke-static {v0}, Lcom/petterp/floatingx/FloatingX;->install(Lcom/petterp/floatingx/assist/helper/FxAppHelper;)Lcom/petterp/floatingx/imp/app/FxAppControlImp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/petterp/floatingx/imp/app/FxAppControlImp;->show()V

    :cond_2
    :goto_1
    invoke-static {}, Lokhttp3/logging/Utf8Kt;->getTopActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/petterp/floatingx/imp/system/FxSystemPlatformProvider$requestPermission$1;->this$0:Lcom/petterp/floatingx/imp/system/FxSystemPlatformProvider;

    iget-object v1, v1, Lcom/petterp/floatingx/imp/system/FxSystemPlatformProvider;->helper:Lcom/petterp/floatingx/assist/helper/FxAppHelper;

    invoke-virtual {v1}, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;->getFxLog$floatingx_release()Lcom/petterp/floatingx/util/FxLog;

    move-result-object v1

    invoke-static {v0, v1}, Lokio/Okio;->safeRemovePermissionFragment(Landroid/app/Activity;Lcom/petterp/floatingx/util/FxLog;)V

    :goto_2
    iget-object p0, p0, Lcom/petterp/floatingx/imp/system/FxSystemPlatformProvider$requestPermission$1;->$resultListener:Lkotlin/jvm/functions/Function1;

    if-nez p0, :cond_4

    goto :goto_3

    :cond_4
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

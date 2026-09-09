.class public final Lcom/petterp/floatingx/FloatingX;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/petterp/floatingx/FloatingX;

.field public static final synthetic fxs:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/petterp/floatingx/FloatingX;

    invoke-direct {v0}, Lcom/petterp/floatingx/FloatingX;-><init>()V

    sput-object v0, Lcom/petterp/floatingx/FloatingX;->INSTANCE:Lcom/petterp/floatingx/FloatingX;

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/petterp/floatingx/FloatingX;->fxs:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final control(Ljava/lang/String;)Lcom/petterp/floatingx/imp/app/FxAppControlImp;
    .locals 2

    sget-object v0, Lcom/petterp/floatingx/FloatingX;->INSTANCE:Lcom/petterp/floatingx/FloatingX;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/petterp/floatingx/FloatingX;->fxs:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/petterp/floatingx/imp/app/FxAppControlImp;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "fxs["

    const-string v1, "]==null!,Please check if FloatingX.install() or AppHelper.setTag() is called."

    invoke-static {v0, p0, v1}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final controlOrNull(Ljava/lang/String;)Lcom/petterp/floatingx/imp/app/FxAppControlImp;
    .locals 1

    sget-object v0, Lcom/petterp/floatingx/FloatingX;->fxs:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/petterp/floatingx/imp/app/FxAppControlImp;

    return-object p0
.end method

.method public static final install(Lcom/petterp/floatingx/assist/helper/FxAppHelper;)Lcom/petterp/floatingx/imp/app/FxAppControlImp;
    .locals 4

    const-string v0, "helper"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/petterp/floatingx/FloatingX;->fxs:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/petterp/floatingx/assist/helper/FxAppHelper;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/petterp/floatingx/imp/app/FxAppControlImp;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/petterp/floatingx/imp/app/FxAppControlImp;->cancel()V

    :goto_0
    iget-object v2, p0, Lcom/petterp/floatingx/assist/helper/FxAppHelper;->scope:Lcom/petterp/floatingx/assist/FxScopeType;

    invoke-virtual {v2}, Lcom/petterp/floatingx/assist/FxScopeType;->getHasPermission()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lcom/petterp/floatingx/imp/app/FxAppControlImp;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/petterp/floatingx/imp/app/FxAppControlImp;-><init>(Lcom/petterp/floatingx/assist/helper/FxBasisHelper;I)V

    goto :goto_1

    :cond_1
    new-instance v2, Lcom/petterp/floatingx/imp/app/FxAppControlImp;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/petterp/floatingx/imp/app/FxAppControlImp;-><init>(Lcom/petterp/floatingx/assist/helper/FxBasisHelper;I)V

    :goto_1
    iget-object p0, v2, Lcom/petterp/floatingx/imp/app/FxAppControlImp;->helper:Lcom/petterp/floatingx/assist/helper/FxBasisHelper;

    invoke-virtual {v2, p0}, Lcom/petterp/floatingx/imp/app/FxAppControlImp;->createPlatformProvider(Lcom/petterp/floatingx/assist/helper/FxBasisHelper;)Lcom/petterp/floatingx/listener/provider/IFxPlatformProvider;

    move-result-object v3

    iput-object v3, v2, Lcom/petterp/floatingx/imp/app/FxAppControlImp;->platformProvider:Lcom/petterp/floatingx/listener/provider/IFxPlatformProvider;

    invoke-virtual {v2}, Lcom/petterp/floatingx/imp/app/FxAppControlImp;->getPlatformProvider()Lcom/petterp/floatingx/listener/provider/IFxPlatformProvider;

    const-string v3, "f"

    invoke-static {v3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v3, Lcom/umeng/analytics/pro/ah;

    invoke-direct {v3, p0}, Lcom/umeng/analytics/pro/ah;-><init>(Ljava/lang/Object;)V

    iput-object v3, v2, Lcom/petterp/floatingx/imp/app/FxAppControlImp;->_animationProvider:Lcom/umeng/analytics/pro/ah;

    invoke-virtual {v2}, Lcom/petterp/floatingx/imp/app/FxAppControlImp;->getPlatformProvider()Lcom/petterp/floatingx/listener/provider/IFxPlatformProvider;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Lcom/petterp/floatingx/imp/app/FxAppControlImp;->createConfigProvider(Lcom/petterp/floatingx/assist/helper/FxBasisHelper;Lcom/petterp/floatingx/listener/provider/IFxPlatformProvider;)Lcom/petterp/floatingx/imp/FxBasicConfigProvider;

    move-result-object p0

    iput-object p0, v2, Lcom/petterp/floatingx/imp/app/FxAppControlImp;->_configControl:Lcom/petterp/floatingx/imp/FxBasicConfigProvider;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2
.end method

.class public final Lcom/petterp/floatingx/assist/helper/FxAppHelper;
.super Lcom/petterp/floatingx/assist/helper/FxBasisHelper;
.source "SourceFile"


# static fields
.field public static final Companion:Lcom/petterp/floatingx/assist/helper/FxAppHelper$Companion;


# instance fields
.field public final synthetic blackFilterList:Ljava/util/List;

.field public final synthetic context:Landroid/app/Application;

.field public final synthetic editTextIds:Ljava/util/List;

.field public final synthetic enableSafeArea:Z

.field public final synthetic fxAskPermissionInterceptor:Lkotlin/jvm/functions/Function2;

.field public final insertCls:Ljava/util/LinkedHashMap;

.field public final synthetic isAllInstall:Z

.field public final synthetic isEnableKeyBoardAdapt:Z

.field public synthetic scope:Lcom/petterp/floatingx/assist/FxScopeType;

.field public final synthetic tag:Ljava/lang/String;

.field public final synthetic whiteInsertList:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/petterp/floatingx/assist/helper/FxAppHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/petterp/floatingx/assist/helper/FxAppHelper$Companion;-><init>(I)V

    sput-object v0, Lcom/petterp/floatingx/assist/helper/FxAppHelper;->Companion:Lcom/petterp/floatingx/assist/helper/FxAppHelper$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/app/Application;Ljava/util/ArrayList;Ljava/util/ArrayList;ZLcom/petterp/floatingx/assist/FxScopeType;Z)V
    .locals 1

    const-string v0, "tag"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "blackFilterList"

    invoke-static {v0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "whiteInsertList"

    invoke-static {v0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "scope"

    invoke-static {v0, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/petterp/floatingx/assist/helper/FxBasisHelper;-><init>()V

    iput-object p1, p0, Lcom/petterp/floatingx/assist/helper/FxAppHelper;->tag:Ljava/lang/String;

    iput-object p2, p0, Lcom/petterp/floatingx/assist/helper/FxAppHelper;->context:Landroid/app/Application;

    iput-object p3, p0, Lcom/petterp/floatingx/assist/helper/FxAppHelper;->blackFilterList:Ljava/util/List;

    iput-object p4, p0, Lcom/petterp/floatingx/assist/helper/FxAppHelper;->whiteInsertList:Ljava/util/List;

    iput-boolean p5, p0, Lcom/petterp/floatingx/assist/helper/FxAppHelper;->isAllInstall:Z

    iput-object p6, p0, Lcom/petterp/floatingx/assist/helper/FxAppHelper;->scope:Lcom/petterp/floatingx/assist/FxScopeType;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/petterp/floatingx/assist/helper/FxAppHelper;->editTextIds:Ljava/util/List;

    iput-boolean p7, p0, Lcom/petterp/floatingx/assist/helper/FxAppHelper;->enableSafeArea:Z

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/petterp/floatingx/assist/helper/FxAppHelper;->isEnableKeyBoardAdapt:Z

    iput-object p1, p0, Lcom/petterp/floatingx/assist/helper/FxAppHelper;->fxAskPermissionInterceptor:Lkotlin/jvm/functions/Function2;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/petterp/floatingx/assist/helper/FxAppHelper;->insertCls:Ljava/util/LinkedHashMap;

    return-void
.end method


# virtual methods
.method public final isCanInstall$floatingx_release(Landroid/app/Activity;)Z
    .locals 4

    const-string v0, "act"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    iget-object v0, p0, Lcom/petterp/floatingx/assist/helper/FxAppHelper;->insertCls:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    if-nez v1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/petterp/floatingx/assist/helper/FxAppHelper;->isAllInstall:Z

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/petterp/floatingx/assist/helper/FxAppHelper;->blackFilterList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    if-nez v2, :cond_2

    iget-object p0, p0, Lcom/petterp/floatingx/assist/helper/FxAppHelper;->whiteInsertList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    :goto_1
    return p0
.end method

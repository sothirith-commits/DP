.class public Lcom/petterp/floatingx/imp/FxBasicConfigProvider;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final helper:Lcom/petterp/floatingx/assist/helper/FxBasisHelper;

.field public final p:Lcom/petterp/floatingx/listener/provider/IFxPlatformProvider;


# direct methods
.method public constructor <init>(Lcom/petterp/floatingx/assist/helper/FxBasisHelper;Lcom/petterp/floatingx/listener/provider/IFxPlatformProvider;)V
    .locals 1

    const-string v0, "helper"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/petterp/floatingx/imp/FxBasicConfigProvider;->helper:Lcom/petterp/floatingx/assist/helper/FxBasisHelper;

    iput-object p2, p0, Lcom/petterp/floatingx/imp/FxBasicConfigProvider;->p:Lcom/petterp/floatingx/listener/provider/IFxPlatformProvider;

    return-void
.end method

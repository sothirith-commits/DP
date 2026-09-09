.class public final Lcom/petterp/floatingx/util/FxLog;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Companion:Lcom/petterp/floatingx/util/FxLog$Companion;

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final enable:Z

.field public final tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/petterp/floatingx/util/FxLog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/petterp/floatingx/util/FxLog$Companion;-><init>(I)V

    sput-object v0, Lcom/petterp/floatingx/util/FxLog;->Companion:Lcom/petterp/floatingx/util/FxLog$Companion;

    const-string v0, "Fx"

    sput-object v0, Lcom/petterp/floatingx/util/FxLog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/petterp/floatingx/util/FxLog;->enable:Z

    iput-object p1, p0, Lcom/petterp/floatingx/util/FxLog;->tag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/String;)V
    .locals 1

    const-string v0, "message"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/petterp/floatingx/util/FxLog;->enable:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/petterp/floatingx/util/FxLog;->tag:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final v(Ljava/lang/String;)V
    .locals 1

    const-string v0, "message"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/petterp/floatingx/util/FxLog;->enable:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/petterp/floatingx/util/FxLog;->tag:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

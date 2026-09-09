.class public final Lcom/deepalhome/launcher/MainActivity$uiModeChangedListener$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/MainActivity;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/MainActivity$uiModeChangedListener$1;->this$0:Lcom/deepalhome/launcher/MainActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/deepalhome/launcher/MainActivity$uiModeChangedListener$1;->this$0:Lcom/deepalhome/launcher/MainActivity;

    sget-object v0, Lcom/deepalhome/launcher/MainActivity;->Companion:Lcom/deepalhome/launcher/MainActivity$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->INSTANCE:Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->applyTransparentSystemBars(Landroid/app/Activity;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/MainActivity$uiModeChangedListener$1;->this$0:Lcom/deepalhome/launcher/MainActivity;

    const-string p1, "uiModeChanged"

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/MainActivity;->requestRootUiSync(Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

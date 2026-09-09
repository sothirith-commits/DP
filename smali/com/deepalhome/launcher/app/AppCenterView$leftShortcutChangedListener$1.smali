.class public final Lcom/deepalhome/launcher/app/AppCenterView$leftShortcutChangedListener$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/app/AppCenterView;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/app/AppCenterView;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/app/AppCenterView$leftShortcutChangedListener$1;->this$0:Lcom/deepalhome/launcher/app/AppCenterView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/deepalhome/launcher/app/AppCenterView$leftShortcutChangedListener$1;->this$0:Lcom/deepalhome/launcher/app/AppCenterView;

    invoke-static {v0}, Lcom/deepalhome/launcher/app/AppCenterView;->access$isShortcutEditMode$p(Lcom/deepalhome/launcher/app/AppCenterView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/deepalhome/launcher/app/AppCenterView$leftShortcutChangedListener$1;->this$0:Lcom/deepalhome/launcher/app/AppCenterView;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1}, Lcom/deepalhome/launcher/app/AppCenterView;->refreshShortcutSelectedState$default(Lcom/deepalhome/launcher/app/AppCenterView;Ljava/util/Set;ILjava/lang/Object;)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

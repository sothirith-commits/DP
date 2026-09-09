.class public final Lcom/deepalhome/launcher/app/AppCenterView$uiModeChangedListener$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/app/AppCenterView;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/app/AppCenterView;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/app/AppCenterView$uiModeChangedListener$1;->this$0:Lcom/deepalhome/launcher/app/AppCenterView;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    iget-object p1, p0, Lcom/deepalhome/launcher/app/AppCenterView$uiModeChangedListener$1;->this$0:Lcom/deepalhome/launcher/app/AppCenterView;

    invoke-static {p1}, Lcom/deepalhome/launcher/app/AppCenterView;->access$applyThemeColors(Lcom/deepalhome/launcher/app/AppCenterView;)V

    iget-object p1, p0, Lcom/deepalhome/launcher/app/AppCenterView$uiModeChangedListener$1;->this$0:Lcom/deepalhome/launcher/app/AppCenterView;

    invoke-static {p1}, Lcom/deepalhome/launcher/app/AppCenterView;->access$getFunctionAdapter$p(Lcom/deepalhome/launcher/app/AppCenterView;)Lcom/deepalhome/launcher/app/FunctionListAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object p1, p0, Lcom/deepalhome/launcher/app/AppCenterView$uiModeChangedListener$1;->this$0:Lcom/deepalhome/launcher/app/AppCenterView;

    invoke-static {p1}, Lcom/deepalhome/launcher/app/AppCenterView;->access$getAppAdapter$p(Lcom/deepalhome/launcher/app/AppCenterView;)Lcom/deepalhome/launcher/app/AppCenterAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    iget-object p0, p0, Lcom/deepalhome/launcher/app/AppCenterView$uiModeChangedListener$1;->this$0:Lcom/deepalhome/launcher/app/AppCenterView;

    invoke-static {p0}, Lcom/deepalhome/launcher/app/AppCenterView;->access$getSystemAppAdapter$p(Lcom/deepalhome/launcher/app/AppCenterView;)Lcom/deepalhome/launcher/app/AppCenterAdapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

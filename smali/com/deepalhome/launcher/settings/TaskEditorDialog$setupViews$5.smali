.class public final Lcom/deepalhome/launcher/settings/TaskEditorDialog$setupViews$5;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $conditionLogicAndBtn:Landroid/widget/Button;

.field final synthetic $conditionLogicContainer:Landroid/widget/LinearLayout;

.field final synthetic $conditionLogicOrBtn:Landroid/widget/Button;

.field final synthetic $conditionsHeader:Landroid/view/View;

.field final synthetic $conditionsRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field final synthetic this$0:Lcom/deepalhome/launcher/settings/TaskEditorDialog;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;Lcom/deepalhome/launcher/settings/TaskEditorDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$setupViews$5;->$conditionsHeader:Landroid/view/View;

    iput-object p5, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$setupViews$5;->$conditionsRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p4, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$setupViews$5;->$conditionLogicContainer:Landroid/widget/LinearLayout;

    iput-object p6, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$setupViews$5;->this$0:Lcom/deepalhome/launcher/settings/TaskEditorDialog;

    iput-object p2, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$setupViews$5;->$conditionLogicAndBtn:Landroid/widget/Button;

    iput-object p3, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$setupViews$5;->$conditionLogicOrBtn:Landroid/widget/Button;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$setupViews$5;->$conditionsHeader:Landroid/view/View;

    iget-object v4, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$setupViews$5;->$conditionsRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$setupViews$5;->$conditionLogicContainer:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$setupViews$5;->this$0:Lcom/deepalhome/launcher/settings/TaskEditorDialog;

    iget-object v1, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$setupViews$5;->$conditionLogicAndBtn:Landroid/widget/Button;

    iget-object v2, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$setupViews$5;->$conditionLogicOrBtn:Landroid/widget/Button;

    invoke-static/range {v0 .. v5}, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->setupViews$updateConditionLogicUI(Landroid/view/View;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;Lcom/deepalhome/launcher/settings/TaskEditorDialog;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

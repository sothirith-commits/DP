.class public final Lcom/deepalhome/launcher/settings/TaskEditorDialog$setupViews$8$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/settings/TaskEditorDialog;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/settings/TaskEditorDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$setupViews$8$1;->this$0:Lcom/deepalhome/launcher/settings/TaskEditorDialog;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/deepalhome/launcher/task/model/TaskAction;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$setupViews$8$1;->this$0:Lcom/deepalhome/launcher/settings/TaskEditorDialog;

    iget-object v0, v0, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->actions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$setupViews$8$1;->this$0:Lcom/deepalhome/launcher/settings/TaskEditorDialog;

    iget-object p1, p1, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->actions:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$setupViews$8$1;->this$0:Lcom/deepalhome/launcher/settings/TaskEditorDialog;

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->actionsAdapter:Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter;

    if-eqz p0, :cond_0

    iput p1, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter;->pendingInsertPosition:I

    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.class public final Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter$onBindViewHolder$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field public final synthetic $holder:Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter$ViewHolder;

.field public final synthetic $valueTv:Landroid/widget/TextView;

.field public final synthetic this$0:Lcom/deepalhome/launcher/settings/TaskEditorDialog;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Lcom/deepalhome/launcher/settings/TaskEditorDialog;Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter$ViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter$onBindViewHolder$5;->$valueTv:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter$onBindViewHolder$5;->this$0:Lcom/deepalhome/launcher/settings/TaskEditorDialog;

    iput-object p3, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter$onBindViewHolder$5;->$holder:Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter$ViewHolder;

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    if-gez p2, :cond_0

    const/4 p2, 0x0

    :cond_0
    iget-object p1, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter$onBindViewHolder$5;->$valueTv:Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter$onBindViewHolder$5;->this$0:Lcom/deepalhome/launcher/settings/TaskEditorDialog;

    iget-object p1, p1, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->actions:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter$onBindViewHolder$5;->$holder:Lcom/deepalhome/launcher/settings/TaskEditorDialog$ActionsAdapter$ViewHolder;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p0

    new-instance p3, Lcom/deepalhome/launcher/task/model/TaskAction$SetVolume;

    invoke-direct {p3, p2}, Lcom/deepalhome/launcher/task/model/TaskAction$SetVolume;-><init>(I)V

    invoke-virtual {p1, p0, p3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

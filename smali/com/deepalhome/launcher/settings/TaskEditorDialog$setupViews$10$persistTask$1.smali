.class public final Lcom/deepalhome/launcher/settings/TaskEditorDialog$setupViews$10$persistTask$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $dialog:Landroid/app/Dialog;

.field final synthetic $task:Lcom/deepalhome/launcher/task/model/ScheduledTask;

.field final synthetic this$0:Lcom/deepalhome/launcher/settings/TaskEditorDialog;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/settings/TaskEditorDialog;Lcom/deepalhome/launcher/task/model/ScheduledTask;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$setupViews$10$persistTask$1;->this$0:Lcom/deepalhome/launcher/settings/TaskEditorDialog;

    iput-object p2, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$setupViews$10$persistTask$1;->$task:Lcom/deepalhome/launcher/task/model/ScheduledTask;

    iput-object p3, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$setupViews$10$persistTask$1;->$dialog:Landroid/app/Dialog;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$setupViews$10$persistTask$1;->this$0:Lcom/deepalhome/launcher/settings/TaskEditorDialog;

    iget-object v0, v0, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->existingTask:Lcom/deepalhome/launcher/task/model/ScheduledTask;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/deepalhome/launcher/task/ScheduledTaskManager;->INSTANCE:Lcom/deepalhome/launcher/task/ScheduledTaskManager;

    iget-object v1, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$setupViews$10$persistTask$1;->$task:Lcom/deepalhome/launcher/task/model/ScheduledTask;

    invoke-virtual {v0, v1}, Lcom/deepalhome/launcher/task/ScheduledTaskManager;->updateTask(Lcom/deepalhome/launcher/task/model/ScheduledTask;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/deepalhome/launcher/task/ScheduledTaskManager;->INSTANCE:Lcom/deepalhome/launcher/task/ScheduledTaskManager;

    iget-object v1, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$setupViews$10$persistTask$1;->$task:Lcom/deepalhome/launcher/task/model/ScheduledTask;

    invoke-virtual {v0, v1}, Lcom/deepalhome/launcher/task/ScheduledTaskManager;->addTask(Lcom/deepalhome/launcher/task/model/ScheduledTask;)V

    :goto_0
    iget-object v0, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$setupViews$10$persistTask$1;->$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$setupViews$10$persistTask$1;->this$0:Lcom/deepalhome/launcher/settings/TaskEditorDialog;

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->onSaved:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

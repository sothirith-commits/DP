.class public final Lcom/deepalhome/launcher/settings/ScheduledTaskSettingsView$shareTask$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $task:Lcom/deepalhome/launcher/task/model/ScheduledTask;

.field final synthetic this$0:Lcom/deepalhome/launcher/settings/ScheduledTaskSettingsView;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/settings/ScheduledTaskSettingsView;Lcom/deepalhome/launcher/task/model/ScheduledTask;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/ScheduledTaskSettingsView$shareTask$1;->this$0:Lcom/deepalhome/launcher/settings/ScheduledTaskSettingsView;

    iput-object p2, p0, Lcom/deepalhome/launcher/settings/ScheduledTaskSettingsView$shareTask$1;->$task:Lcom/deepalhome/launcher/task/model/ScheduledTask;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final native invoke()Ljava/lang/Object;
.end method

.class public final Lcom/deepalhome/launcher/settings/ScheduledTaskSettingsView$doUploadTask$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic $loadingDialog:Landroid/app/Dialog;

.field final synthetic $task:Lcom/deepalhome/launcher/task/model/ScheduledTask;

.field final synthetic this$0:Lcom/deepalhome/launcher/settings/ScheduledTaskSettingsView;


# direct methods
.method public constructor <init>(Landroid/app/Dialog;Lcom/deepalhome/launcher/task/model/ScheduledTask;Lcom/deepalhome/launcher/settings/ScheduledTaskSettingsView;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/ScheduledTaskSettingsView$doUploadTask$1;->$loadingDialog:Landroid/app/Dialog;

    iput-object p2, p0, Lcom/deepalhome/launcher/settings/ScheduledTaskSettingsView$doUploadTask$1;->$task:Lcom/deepalhome/launcher/task/model/ScheduledTask;

    iput-object p3, p0, Lcom/deepalhome/launcher/settings/ScheduledTaskSettingsView$doUploadTask$1;->this$0:Lcom/deepalhome/launcher/settings/ScheduledTaskSettingsView;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final native invoke(Ljava/lang/Object;)Ljava/lang/Object;
.end method

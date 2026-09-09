.class public final synthetic Lcom/deepalhome/launcher/settings/ScheduledTaskSettingsView$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/deepalhome/launcher/settings/ScheduledTaskSettingsView;

.field public final synthetic f$1:Lcom/deepalhome/launcher/task/model/ScheduledTask;


# direct methods
.method public synthetic constructor <init>(Lcom/deepalhome/launcher/settings/ScheduledTaskSettingsView;Lcom/deepalhome/launcher/task/model/ScheduledTask;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/deepalhome/launcher/settings/ScheduledTaskSettingsView$$ExternalSyntheticLambda4;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/ScheduledTaskSettingsView$$ExternalSyntheticLambda4;->f$0:Lcom/deepalhome/launcher/settings/ScheduledTaskSettingsView;

    iput-object p2, p0, Lcom/deepalhome/launcher/settings/ScheduledTaskSettingsView$$ExternalSyntheticLambda4;->f$1:Lcom/deepalhome/launcher/task/model/ScheduledTask;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/deepalhome/launcher/task/model/ScheduledTask;Lcom/deepalhome/launcher/settings/ScheduledTaskSettingsView;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/deepalhome/launcher/settings/ScheduledTaskSettingsView$$ExternalSyntheticLambda4;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/ScheduledTaskSettingsView$$ExternalSyntheticLambda4;->f$1:Lcom/deepalhome/launcher/task/model/ScheduledTask;

    iput-object p2, p0, Lcom/deepalhome/launcher/settings/ScheduledTaskSettingsView$$ExternalSyntheticLambda4;->f$0:Lcom/deepalhome/launcher/settings/ScheduledTaskSettingsView;

    return-void
.end method


# virtual methods
.method public final native onClick(Landroid/view/View;)V
.end method

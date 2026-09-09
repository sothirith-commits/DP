.class public final Lcom/deepalhome/launcher/settings/ScheduledTaskSettingsView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final binding:Lcom/deepalhome/launcher/databinding/ScheduledTaskSettingsViewBinding;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v2, Lcom/deepalhome/launcher/databinding/ScheduledTaskSettingsViewBinding;->$r8$clinit:I

    sget-object v2, Landroidx/databinding/DataBindingUtil;->sMapper:Landroidx/databinding/DataBinderMapperImpl;

    const v2, 0x7f0e00ec

    invoke-static {p1, v2, p0, v0, v1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/ScheduledTaskSettingsViewBinding;

    const-string v1, "inflate(...)"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/ScheduledTaskSettingsView;->binding:Lcom/deepalhome/launcher/databinding/ScheduledTaskSettingsViewBinding;

    new-instance v1, Lcom/deepalhome/launcher/settings/ScheduledTaskSettingsView$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/deepalhome/launcher/settings/ScheduledTaskSettingsView$$ExternalSyntheticLambda0;-><init>(Lcom/deepalhome/launcher/settings/ScheduledTaskSettingsView;I)V

    iget-object v2, p1, Lcom/deepalhome/launcher/databinding/ScheduledTaskSettingsViewBinding;->addTaskBtn:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/deepalhome/launcher/settings/ScheduledTaskSettingsView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/deepalhome/launcher/settings/ScheduledTaskSettingsView$$ExternalSyntheticLambda0;-><init>(Lcom/deepalhome/launcher/settings/ScheduledTaskSettingsView;I)V

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/ScheduledTaskSettingsViewBinding;->importTaskBtn:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/settings/ScheduledTaskSettingsView;->refreshTasks()V

    return-void
.end method


# virtual methods
.method public final native refreshTasks()V
.end method

.method public final native showTaskEditor(Lcom/deepalhome/launcher/task/model/ScheduledTask;)V
.end method

.class public final Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $backBtn:Landroid/widget/ImageView;

.field final synthetic $contentContainer:Landroid/widget/FrameLayout;

.field final synthetic $contentRoot:Landroid/widget/LinearLayout;

.field final synthetic $customContent:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef;"
        }
    .end annotation
.end field

.field final synthetic $defaultPadding:[I

.field final synthetic $dialog:Landroid/app/AlertDialog;

.field final synthetic $gridRv:Landroidx/recyclerview/widget/RecyclerView;

.field final synthetic $headerLayout:Landroid/widget/LinearLayout;

.field final synthetic $onSelected:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation
.end field

.field final synthetic $renderButtonPicker:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef;"
        }
    .end annotation
.end field

.field final synthetic $renderGearPicker:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef;"
        }
    .end annotation
.end field

.field final synthetic $renderSpeedRangePicker:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef;"
        }
    .end annotation
.end field

.field final synthetic $titleTv:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/deepalhome/launcher/settings/TaskEditorDialog;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Lcom/deepalhome/launcher/settings/TaskEditorDialog;Landroid/widget/ImageView;Landroidx/recyclerview/widget/RecyclerView;Landroid/app/AlertDialog;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;[ILandroid/widget/FrameLayout;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/deepalhome/launcher/settings/TaskEditorDialog$setupViews$6$1;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$1;->$titleTv:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$1;->this$0:Lcom/deepalhome/launcher/settings/TaskEditorDialog;

    iput-object p3, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$1;->$backBtn:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$1;->$gridRv:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p5, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$1;->$dialog:Landroid/app/AlertDialog;

    iput-object p6, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$1;->$customContent:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p7, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$1;->$headerLayout:Landroid/widget/LinearLayout;

    iput-object p8, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$1;->$contentRoot:Landroid/widget/LinearLayout;

    iput-object p9, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$1;->$defaultPadding:[I

    iput-object p10, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$1;->$contentContainer:Landroid/widget/FrameLayout;

    iput-object p11, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$1;->$renderGearPicker:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p12, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$1;->$renderSpeedRangePicker:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p13, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$1;->$onSelected:Lkotlin/jvm/functions/Function1;

    iput-object p14, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$1;->$renderButtonPicker:Lkotlin/jvm/internal/Ref$ObjectRef;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 14

    iget-object v0, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$1;->$titleTv:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$1;->this$0:Lcom/deepalhome/launcher/settings/TaskEditorDialog;

    iget-object v1, v1, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->context:Landroid/content/Context;

    const v2, 0x7f13046e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$1;->$backBtn:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$1;->$dialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda8;

    const/16 v3, 0x8

    invoke-direct {v2, v1, v3}, Lcom/deepalhome/launcher/settings/TaskEditorDialog$$ExternalSyntheticLambda8;-><init>(Landroid/app/AlertDialog;I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$1;->$customContent:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v5, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$1;->$headerLayout:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$1;->$gridRv:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v7, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$1;->$contentRoot:Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$1;->$defaultPadding:[I

    iget-object v9, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$1;->$titleTv:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$1;->this$0:Lcom/deepalhome/launcher/settings/TaskEditorDialog;

    iget-object v11, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$1;->$backBtn:Landroid/widget/ImageView;

    iget-object v12, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$1;->$dialog:Landroid/app/AlertDialog;

    iget-object v13, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$1;->$contentContainer:Landroid/widget/FrameLayout;

    invoke-static/range {v4 .. v13}, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->access$showTriggerPicker$restoreTriggerGrid(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/LinearLayout;[ILandroid/widget/TextView;Lcom/deepalhome/launcher/settings/TaskEditorDialog;Landroid/widget/ImageView;Landroid/app/AlertDialog;Landroid/widget/FrameLayout;)V

    sget-object v0, Lcom/deepalhome/launcher/util/CarUtil;->Companion:Lcom/deepalhome/launcher/util/CarUtil$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->isS05()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/deepalhome/launcher/task/model/TaskTrigger;->Companion:Lcom/deepalhome/launcher/task/model/TaskTrigger$Companion;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/task/model/TaskTrigger$Companion;->allForS05()Ljava/util/List;

    move-result-object v0

    :goto_0
    move-object v3, v0

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/deepalhome/launcher/task/model/TaskTrigger;->Companion:Lcom/deepalhome/launcher/task/model/TaskTrigger$Companion;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/task/model/TaskTrigger$Companion;->all()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$1;->$gridRv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v9, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$1$2;

    iget-object v2, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$1;->this$0:Lcom/deepalhome/launcher/settings/TaskEditorDialog;

    iget-object v4, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$1;->$renderGearPicker:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v5, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$1;->$renderSpeedRangePicker:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v6, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$1;->$dialog:Landroid/app/AlertDialog;

    iget-object v7, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$1;->$onSelected:Lkotlin/jvm/functions/Function1;

    iget-object v8, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$1;->$renderButtonPicker:Lkotlin/jvm/internal/Ref$ObjectRef;

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$1$2;-><init>(Lcom/deepalhome/launcher/settings/TaskEditorDialog;Ljava/util/List;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/app/AlertDialog;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {v0, v9}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

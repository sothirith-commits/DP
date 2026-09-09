.class public final Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$4;
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

.field final synthetic $renderTriggerPicker:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef;"
        }
    .end annotation
.end field

.field final synthetic $titleTv:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/deepalhome/launcher/settings/TaskEditorDialog;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Landroid/widget/ImageView;Landroidx/recyclerview/widget/RecyclerView;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;[ILcom/deepalhome/launcher/settings/TaskEditorDialog;Landroid/app/AlertDialog;Landroid/widget/FrameLayout;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/deepalhome/launcher/settings/TaskEditorDialog$setupViews$6$1;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$4;->$titleTv:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$4;->$backBtn:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$4;->$gridRv:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p4, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$4;->$customContent:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p5, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$4;->$headerLayout:Landroid/widget/LinearLayout;

    iput-object p6, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$4;->$contentRoot:Landroid/widget/LinearLayout;

    iput-object p7, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$4;->$defaultPadding:[I

    iput-object p8, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$4;->this$0:Lcom/deepalhome/launcher/settings/TaskEditorDialog;

    iput-object p9, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$4;->$dialog:Landroid/app/AlertDialog;

    iput-object p10, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$4;->$contentContainer:Landroid/widget/FrameLayout;

    iput-object p11, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$4;->$renderTriggerPicker:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p12, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$4;->$onSelected:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 11

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$4;->$customContent:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$4;->$headerLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$4;->$gridRv:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v4, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$4;->$contentRoot:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$4;->$defaultPadding:[I

    iget-object v6, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$4;->$titleTv:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$4;->this$0:Lcom/deepalhome/launcher/settings/TaskEditorDialog;

    iget-object v8, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$4;->$backBtn:Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$4;->$dialog:Landroid/app/AlertDialog;

    iget-object v10, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$4;->$contentContainer:Landroid/widget/FrameLayout;

    invoke-static/range {v1 .. v10}, Lcom/deepalhome/launcher/settings/TaskEditorDialog;->access$showTriggerPicker$restoreTriggerGrid(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/widget/LinearLayout;Landroidx/recyclerview/widget/RecyclerView;Landroid/widget/LinearLayout;[ILandroid/widget/TextView;Lcom/deepalhome/launcher/settings/TaskEditorDialog;Landroid/widget/ImageView;Landroid/app/AlertDialog;Landroid/widget/FrameLayout;)V

    iget-object v1, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$4;->$titleTv:Landroid/widget/TextView;

    const-string v2, "Select key"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$4;->$backBtn:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$4;->$renderTriggerPicker:Lkotlin/jvm/internal/Ref$ObjectRef;

    new-instance v3, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$$ExternalSyntheticLambda2;

    invoke-direct {v3, v0, v2}, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$$ExternalSyntheticLambda2;-><init>(ILkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/deepalhome/launcher/task/model/TaskTrigger$ButtonType;

    sget-object v2, Lcom/deepalhome/launcher/task/model/TaskTrigger$ButtonType$HeartKey1;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskTrigger$ButtonType$HeartKey1;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/deepalhome/launcher/task/model/TaskTrigger$ButtonType$HeartKey2;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskTrigger$ButtonType$HeartKey2;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lcom/deepalhome/launcher/task/model/TaskTrigger$ButtonType$InstrumentSwitch;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskTrigger$ButtonType$InstrumentSwitch;

    aput-object v2, v1, v0

    sget-object v0, Lcom/deepalhome/launcher/task/model/TaskTrigger$ButtonType$VoiceKey;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskTrigger$ButtonType$VoiceKey;

    const/4 v2, 0x3

    aput-object v0, v1, v2

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$4;->$gridRv:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$4$2;

    iget-object v3, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$4;->this$0:Lcom/deepalhome/launcher/settings/TaskEditorDialog;

    iget-object v4, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$4;->$onSelected:Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$4;->$dialog:Landroid/app/AlertDialog;

    invoke-direct {v2, v3, v0, v4, p0}, Lcom/deepalhome/launcher/settings/TaskEditorDialog$showTriggerPicker$4$2;-><init>(Lcom/deepalhome/launcher/settings/TaskEditorDialog;Ljava/util/List;Lkotlin/jvm/functions/Function1;Landroid/app/AlertDialog;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

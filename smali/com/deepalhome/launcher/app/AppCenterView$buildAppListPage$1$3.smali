.class public final Lcom/deepalhome/launcher/app/AppCenterView$buildAppListPage$1$3;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field final synthetic $appListAdapter:Lcom/deepalhome/launcher/app/AppCenterAdapter;

.field final synthetic this$0:Lcom/deepalhome/launcher/app/AppCenterView;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/app/AppCenterAdapter;Lcom/deepalhome/launcher/app/AppCenterView;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/app/AppCenterView$buildAppListPage$1$3;->$appListAdapter:Lcom/deepalhome/launcher/app/AppCenterAdapter;

    iput-object p2, p0, Lcom/deepalhome/launcher/app/AppCenterView$buildAppListPage$1$3;->this$0:Lcom/deepalhome/launcher/app/AppCenterView;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    check-cast p1, Landroid/view/View;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    const-string v0, "view"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/app/AppCenterView$buildAppListPage$1$3;->$appListAdapter:Lcom/deepalhome/launcher/app/AppCenterAdapter;

    iget-object v0, v0, Lcom/chad/library/adapter4/BaseQuickAdapter;->items:Ljava/util/List;

    invoke-static {p2, v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->getOrNull(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/deepalhome/launcher/app/App;

    if-nez p2, :cond_0

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_0

    :cond_0
    invoke-static {}, Lcom/blankj/utilcode/util/GsonUtils;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/ClipData$Item;

    invoke-direct {v1, v0}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/deepalhome/launcher/app/AppCenterView$buildAppListPage$1$3;->this$0:Lcom/deepalhome/launcher/app/AppCenterView;

    invoke-static {v2}, Lcom/deepalhome/launcher/app/AppCenterView;->access$isShortcutEditMode$p(Lcom/deepalhome/launcher/app/AppCenterView;)Z

    move-result v2

    const/16 v3, 0x200

    const/high16 v4, 0x3f800000    # 1.0f

    const-string v5, "text/plain"

    const-string v6, "APP_CLIP_DATA"

    if-eqz v2, :cond_2

    new-instance p2, Landroid/content/ClipData;

    new-instance v2, Landroid/content/ClipDescription;

    invoke-static {v6, v0}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v0, v5}, Landroid/content/ClipDescription;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;)V

    invoke-direct {p2, v2, v1}, Landroid/content/ClipData;-><init>(Landroid/content/ClipDescription;Landroid/content/ClipData$Item;)V

    new-instance v0, Lcom/deepalhome/launcher/widget/WidgetDragShadowBuilder;

    new-instance v1, Lcom/deepalhome/launcher/app/AppCenterView$buildAppListPage$1$3$1;

    iget-object v2, p0, Lcom/deepalhome/launcher/app/AppCenterView$buildAppListPage$1$3;->this$0:Lcom/deepalhome/launcher/app/AppCenterView;

    const/4 v5, 0x0

    invoke-direct {v1, v2, v5}, Lcom/deepalhome/launcher/app/AppCenterView$buildAppListPage$1$3$1;-><init>(Lcom/deepalhome/launcher/app/AppCenterView;I)V

    invoke-direct {v0, p1, v4, v1}, Lcom/deepalhome/launcher/widget/WidgetDragShadowBuilder;-><init>(Landroid/view/View;FLcom/deepalhome/launcher/widget/WidgetDragShadowBuilder$TouchPointProvider;)V

    invoke-virtual {p1, p2, v0, p1, v3}, Landroid/view/View;->startDragAndDrop(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    iget-object p0, p0, Lcom/deepalhome/launcher/app/AppCenterView$buildAppListPage$1$3;->this$0:Lcom/deepalhome/launcher/app/AppCenterView;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/app/AppCenterView;->getOnDismissRequest()Lkotlin/jvm/functions/Function0;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_1
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/deepalhome/launcher/app/AppCenterView$buildAppListPage$1$3;->$appListAdapter:Lcom/deepalhome/launcher/app/AppCenterAdapter;

    iget-boolean v2, v2, Lcom/deepalhome/launcher/app/AppCenterAdapter;->isEditMode:Z

    if-eqz v2, :cond_3

    new-instance v2, Landroid/content/ClipData;

    new-instance v7, Landroid/content/ClipDescription;

    invoke-static {v6, v0}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v0, v5}, Landroid/content/ClipDescription;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;)V

    invoke-direct {v2, v7, v1}, Landroid/content/ClipData;-><init>(Landroid/content/ClipDescription;Landroid/content/ClipData$Item;)V

    new-instance v0, Lcom/deepalhome/launcher/widget/WidgetDragShadowBuilder;

    new-instance v1, Lcom/deepalhome/launcher/app/AppCenterView$buildAppListPage$1$3$1;

    iget-object p0, p0, Lcom/deepalhome/launcher/app/AppCenterView$buildAppListPage$1$3;->this$0:Lcom/deepalhome/launcher/app/AppCenterView;

    const/4 v5, 0x1

    invoke-direct {v1, p0, v5}, Lcom/deepalhome/launcher/app/AppCenterView$buildAppListPage$1$3$1;-><init>(Lcom/deepalhome/launcher/app/AppCenterView;I)V

    invoke-direct {v0, p1, v4, v1}, Lcom/deepalhome/launcher/widget/WidgetDragShadowBuilder;-><init>(Landroid/view/View;FLcom/deepalhome/launcher/widget/WidgetDragShadowBuilder$TouchPointProvider;)V

    sget-object p0, Lcom/deepalhome/launcher/navigation/model/GridItemType;->APP:Lcom/deepalhome/launcher/navigation/model/GridItemType;

    sget-object v1, Lcom/deepalhome/launcher/navigation/editor/GridDragPayload$TemplateSource;->APP_CENTER:Lcom/deepalhome/launcher/navigation/editor/GridDragPayload$TemplateSource;

    sget-object v4, Lcom/deepalhome/launcher/navigation/model/GridItemPayload;->Companion:Lcom/deepalhome/launcher/navigation/model/GridItemPayload$Companion;

    invoke-virtual {p2}, Lcom/deepalhome/launcher/app/App;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcom/deepalhome/launcher/app/App;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, v5, p2}, Lcom/deepalhome/launcher/navigation/model/GridItemPayload$Companion;->app$default(Lcom/deepalhome/launcher/navigation/model/GridItemPayload$Companion;Ljava/lang/String;Ljava/lang/String;)Lcom/deepalhome/launcher/navigation/model/GridItemPayload;

    move-result-object p2

    new-instance v4, Lcom/deepalhome/launcher/navigation/editor/GridDragPayload$Template;

    invoke-direct {v4, p0, p2, v1}, Lcom/deepalhome/launcher/navigation/editor/GridDragPayload$Template;-><init>(Lcom/deepalhome/launcher/navigation/model/GridItemType;Lcom/deepalhome/launcher/navigation/model/GridItemPayload;Lcom/deepalhome/launcher/navigation/editor/GridDragPayload$TemplateSource;)V

    invoke-virtual {p1, v2, v0, v4, v3}, Landroid/view/View;->startDragAndDrop(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_3
    new-instance p2, Landroid/content/ClipData;

    new-instance v2, Landroid/content/ClipDescription;

    invoke-static {v6, v0}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v0, v5}, Landroid/content/ClipDescription;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;)V

    invoke-direct {p2, v2, v1}, Landroid/content/ClipData;-><init>(Landroid/content/ClipDescription;Landroid/content/ClipData$Item;)V

    new-instance v0, Lcom/deepalhome/launcher/widget/WidgetDragShadowBuilder;

    new-instance v1, Lcom/deepalhome/launcher/app/AppCenterView$buildAppListPage$1$3$1;

    iget-object v2, p0, Lcom/deepalhome/launcher/app/AppCenterView$buildAppListPage$1$3;->this$0:Lcom/deepalhome/launcher/app/AppCenterView;

    const/4 v5, 0x2

    invoke-direct {v1, v2, v5}, Lcom/deepalhome/launcher/app/AppCenterView$buildAppListPage$1$3$1;-><init>(Lcom/deepalhome/launcher/app/AppCenterView;I)V

    invoke-direct {v0, p1, v4, v1}, Lcom/deepalhome/launcher/widget/WidgetDragShadowBuilder;-><init>(Landroid/view/View;FLcom/deepalhome/launcher/widget/WidgetDragShadowBuilder$TouchPointProvider;)V

    invoke-virtual {p1, p2, v0, p1, v3}, Landroid/view/View;->startDragAndDrop(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    iget-object p0, p0, Lcom/deepalhome/launcher/app/AppCenterView$buildAppListPage$1$3;->this$0:Lcom/deepalhome/launcher/app/AppCenterView;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/app/AppCenterView;->getOnDismissRequest()Lkotlin/jvm/functions/Function0;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_4
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    return-object p0
.end method

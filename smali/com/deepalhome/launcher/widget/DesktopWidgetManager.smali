.class public final Lcom/deepalhome/launcher/widget/DesktopWidgetManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/deepalhome/launcher/widget/IWidgetManager;


# instance fields
.field public final widgets:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/deepalhome/launcher/widget/WidgetInfo;->Companion:Lcom/deepalhome/launcher/widget/WidgetInfo$Companion;

    const-class v1, Lcom/deepalhome/launcher/time/TimeWeatherWidgetView;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/16 v5, 0xe

    invoke-static/range {v0 .. v5}, Lcom/deepalhome/launcher/widget/WidgetInfo$Companion;->createWidgetInfo$default(Lcom/deepalhome/launcher/widget/WidgetInfo$Companion;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Integer;Ljava/lang/Integer;I)Lcom/deepalhome/launcher/widget/WidgetInfo;

    move-result-object v0

    filled-new-array {v0}, [Lcom/deepalhome/launcher/widget/WidgetInfo;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/deepalhome/launcher/widget/DesktopWidgetManager;->widgets:Ljava/util/ArrayList;

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/UserConfig;->getDesktopWidgets()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    sget-object v1, Lcom/deepalhome/launcher/widget/DesktopWidgetManager$removeUnsupportedWidgets$1;->INSTANCE:Lcom/deepalhome/launcher/widget/DesktopWidgetManager$removeUnsupportedWidgets$1;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt__MutableCollectionsKt;->removeAll(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Z

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/deepalhome/launcher/config/UserConfig;->setDesktopWidgets(Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method public final addWidgets(Lcom/deepalhome/launcher/widget/WidgetInfo;)V
    .locals 1

    sget-object v0, Lcom/deepalhome/launcher/widget/WidgetInfo;->Companion:Lcom/deepalhome/launcher/widget/WidgetInfo$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/deepalhome/launcher/widget/WidgetInfo;->className:Ljava/lang/String;

    invoke-static {v0}, Lcom/deepalhome/launcher/widget/WidgetInfo$Companion;->isWidgetClassSupported(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/deepalhome/launcher/widget/DesktopWidgetManager;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/deepalhome/launcher/widget/DesktopWidgetManager;->save()V

    return-void
.end method

.method public final deleteWidget(Lcom/deepalhome/launcher/widget/WidgetInfo;)V
    .locals 1

    const-string v0, "draggedWidget"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/deepalhome/launcher/widget/ImageWidgetCacheManager;->INSTANCE:Lcom/deepalhome/launcher/widget/ImageWidgetCacheManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/deepalhome/launcher/widget/ImageWidgetCacheManager;->deleteWidgetCache(Lcom/deepalhome/launcher/widget/WidgetInfo;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/widget/DesktopWidgetManager;->widgets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/deepalhome/launcher/widget/DesktopWidgetManager;->save()V

    return-void
.end method

.method public final getWidgets()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lcom/deepalhome/launcher/widget/DesktopWidgetManager$removeUnsupportedWidgets$1;->INSTANCE:Lcom/deepalhome/launcher/widget/DesktopWidgetManager$removeUnsupportedWidgets$1;

    iget-object p0, p0, Lcom/deepalhome/launcher/widget/DesktopWidgetManager;->widgets:Ljava/util/ArrayList;

    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt__MutableCollectionsKt;->removeAll(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final save()V
    .locals 1

    sget-object v0, Lcom/deepalhome/launcher/widget/DesktopWidgetManager$removeUnsupportedWidgets$1;->INSTANCE:Lcom/deepalhome/launcher/widget/DesktopWidgetManager$removeUnsupportedWidgets$1;

    iget-object p0, p0, Lcom/deepalhome/launcher/widget/DesktopWidgetManager;->widgets:Ljava/util/ArrayList;

    invoke-static {p0, v0}, Lkotlin/collections/CollectionsKt__MutableCollectionsKt;->removeAll(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Z

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/deepalhome/launcher/config/UserConfig;->setDesktopWidgets(Ljava/util/ArrayList;)V

    return-void
.end method

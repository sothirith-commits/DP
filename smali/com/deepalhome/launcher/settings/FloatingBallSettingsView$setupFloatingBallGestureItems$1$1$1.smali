.class public final Lcom/deepalhome/launcher/settings/FloatingBallSettingsView$setupFloatingBallGestureItems$1$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic $key:Ljava/lang/String;

.field final synthetic this$0:Lcom/deepalhome/launcher/settings/FloatingBallSettingsView;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/deepalhome/launcher/settings/FloatingBallSettingsView;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView$setupFloatingBallGestureItems$1$1$1;->$key:Ljava/lang/String;

    iput-object p2, p0, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView$setupFloatingBallGestureItems$1$1$1;->this$0:Lcom/deepalhome/launcher/settings/FloatingBallSettingsView;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lcom/deepalhome/launcher/task/model/TaskAction;

    sget-object v0, Lcom/deepalhome/launcher/floating/FloatingBallWindow;->INSTANCE:Lcom/deepalhome/launcher/floating/FloatingBallWindow;

    iget-object v1, p0, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView$setupFloatingBallGestureItems$1$1$1;->$key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "key"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/deepalhome/launcher/config/UserConfig;->getFloatingBallGestureActions()Ljava/util/HashMap;

    move-result-object v2

    if-nez p1, :cond_0

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfig()V

    iget-object p1, p0, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView$setupFloatingBallGestureItems$1$1$1;->this$0:Lcom/deepalhome/launcher/settings/FloatingBallSettingsView;

    iget-object p1, p1, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView;->floatingBallGestureItems:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView$setupFloatingBallGestureItems$1$1$1;->$key:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView$GestureItemView;

    iget-object v2, v2, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView$GestureItemView;->key:Ljava/lang/String;

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    check-cast v1, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView$GestureItemView;

    if-eqz v1, :cond_3

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView$setupFloatingBallGestureItems$1$1$1;->this$0:Lcom/deepalhome/launcher/settings/FloatingBallSettingsView;

    invoke-virtual {p0, v1}, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView;->updateFloatingBallGestureItem(Lcom/deepalhome/launcher/settings/FloatingBallSettingsView$GestureItemView;)V

    :cond_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

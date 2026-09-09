.class public final Lcom/deepalhome/launcher/navigation/model/NavBarGridMigrator;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final schema:Lcom/deepalhome/launcher/navigation/model/GridSchema;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/deepalhome/launcher/navigation/model/NavBarGridMigrator;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    new-instance p1, Lcom/deepalhome/launcher/navigation/model/GridSchema;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/deepalhome/launcher/navigation/model/GridSchema;-><init>(I)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/navigation/model/NavBarGridMigrator;->schema:Lcom/deepalhome/launcher/navigation/model/GridSchema;

    return-void
.end method

.method public static shouldPersist(Lcom/deepalhome/launcher/config/UserConfig;Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;)Z
    .locals 3

    const-string v0, "userConfig"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/UserConfig;->getNavBarGridConfig()Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;

    move-result-object p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;->sanitized()Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;->normalized(Z)Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v0

    return p0

    :cond_1
    sget-object p0, Lcom/deepalhome/launcher/shortcuts/ShortcutsManager;->INSTANCE:Lcom/deepalhome/launcher/shortcuts/ShortcutsManager;

    sget-object p1, Lcom/deepalhome/launcher/shortcuts/ShortcutsManager$Style;->BOTTOM:Lcom/deepalhome/launcher/shortcuts/ShortcutsManager$Style;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, ""

    invoke-static {p0}, Lcom/blankj/utilcode/util/SPUtils;->getInstance(Ljava/lang/String;)Lcom/blankj/utilcode/util/SPUtils;

    move-result-object v1

    invoke-static {p1}, Lcom/deepalhome/launcher/shortcuts/ShortcutsManager;->storageKey(Lcom/deepalhome/launcher/shortcuts/ShortcutsManager$Style;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, v1, Lcom/blankj/utilcode/util/SPUtils;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, p0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "KEY_SHORTCUTS"

    invoke-interface {v1, v2, p0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/2addr p1, v0

    if-nez p1, :cond_3

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/2addr p0, v0

    if-nez p0, :cond_3

    sget-object p0, Lcom/deepalhome/launcher/util/AppUtil;->INSTANCE:Lcom/deepalhome/launcher/util/AppUtil;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/AppUtil;->getCachedApps()Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 v0, 0x0

    :cond_3
    return v0
.end method


# virtual methods
.method public final migrate(Lcom/deepalhome/launcher/config/UserConfig;)Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;
    .locals 5

    const-string v0, "userConfig"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/deepalhome/launcher/config/UserConfig;->getNavBarGridConfig()Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;->sanitized()Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;->normalized(Z)Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;

    move-result-object p1

    iget-object v1, p1, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    return-object p1

    :cond_1
    sget-object p1, Lcom/deepalhome/launcher/shortcuts/ShortcutsManager;->INSTANCE:Lcom/deepalhome/launcher/shortcuts/ShortcutsManager;

    sget-object v1, Lcom/deepalhome/launcher/shortcuts/ShortcutsManager$Style;->BOTTOM:Lcom/deepalhome/launcher/shortcuts/ShortcutsManager$Style;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/deepalhome/launcher/shortcuts/ShortcutsManager;->getShortcuts(Lcom/deepalhome/launcher/shortcuts/ShortcutsManager$Style;)Ljava/util/ArrayList;

    move-result-object p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/app/App;

    sget-object v3, Lcom/deepalhome/launcher/navigation/model/GridItemPayload;->Companion:Lcom/deepalhome/launcher/navigation/model/GridItemPayload$Companion;

    invoke-virtual {v2}, Lcom/deepalhome/launcher/app/App;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/deepalhome/launcher/app/App;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2}, Lcom/deepalhome/launcher/navigation/model/GridItemPayload$Companion;->app$default(Lcom/deepalhome/launcher/navigation/model/GridItemPayload$Companion;Ljava/lang/String;Ljava/lang/String;)Lcom/deepalhome/launcher/navigation/model/GridItemPayload;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    iget-object p0, p0, Lcom/deepalhome/launcher/navigation/model/NavBarGridMigrator;->schema:Lcom/deepalhome/launcher/navigation/model/GridSchema;

    if-eqz p1, :cond_3

    sget-object p1, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;->Companion:Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig$Companion;

    invoke-static {p1, p0, v0}, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig$Companion;->default$default(Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig$Companion;Lcom/deepalhome/launcher/navigation/model/GridSchema;I)Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;->normalized(Z)Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;

    move-result-object p0

    goto :goto_2

    :cond_3
    sget-object p1, Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;->Companion:Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "schema"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p1, Lcom/deepalhome/launcher/navigation/profile/BottomNavPresetComposer;->INSTANCE:Lcom/deepalhome/launcher/navigation/profile/BottomNavPresetComposer;

    invoke-static {p1, v1, p0}, Lcom/deepalhome/launcher/navigation/profile/BottomNavPresetComposer;->composeCurrentProfile$default(Lcom/deepalhome/launcher/navigation/profile/BottomNavPresetComposer;Ljava/util/List;Lcom/deepalhome/launcher/navigation/model/GridSchema;)Lcom/deepalhome/launcher/navigation/model/NavBarGridConfig;

    move-result-object p0

    :goto_2
    return-object p0
.end method

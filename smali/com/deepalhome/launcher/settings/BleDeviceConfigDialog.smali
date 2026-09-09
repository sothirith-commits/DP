.class public final Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final bgColor$delegate:Lkotlin/SynchronizedLazyImpl;

.field public binding:Lcom/deepalhome/launcher/databinding/BleDeviceConfigDialogBinding;

.field public final context:Landroid/content/Context;

.field public currentActionSubmenu:Lcom/deepalhome/launcher/settings/ActionPickerSubmenu;

.field public currentTab:Lcom/deepalhome/tuotuotie/EventType;

.field public final device:Lcom/deepalhome/tuotuotie/BleDevice;

.field public dialog:Landroid/app/Dialog;

.field public final editTextBg$delegate:Lkotlin/SynchronizedLazyImpl;

.field public final hintColor$delegate:Lkotlin/SynchronizedLazyImpl;

.field public final isNight:Z

.field public final mainColor$delegate:Lkotlin/SynchronizedLazyImpl;

.field public final onSave:Lkotlin/jvm/functions/Function1;

.field public final tabMap:Ljava/util/LinkedHashMap;

.field public final tempEventActions:Ljava/util/LinkedHashMap;

.field public final textColor$delegate:Lkotlin/SynchronizedLazyImpl;

.field public titleInputInteraction:Lcom/deepalhome/launcher/util/DialogInputInteractionController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/deepalhome/tuotuotie/BleDevice;Lcom/deepalhome/launcher/settings/BleSettingsView$createDeepalDeviceCard$2$1;)V
    .locals 1

    const-string v0, "onSave"

    invoke-static {v0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->device:Lcom/deepalhome/tuotuotie/BleDevice;

    iput-object p3, p0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->onSave:Lkotlin/jvm/functions/Function1;

    iget-object p1, p2, Lcom/deepalhome/tuotuotie/BleDevice;->eventActions:Ljava/util/Map;

    invoke-static {p1}, Lkotlin/collections/MapsKt__MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object p1

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->tempEventActions:Ljava/util/LinkedHashMap;

    sget-object p1, Lcom/deepalhome/tuotuotie/EventType;->CLICK:Lcom/deepalhome/tuotuotie/EventType;

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->currentTab:Lcom/deepalhome/tuotuotie/EventType;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->tabMap:Ljava/util/LinkedHashMap;

    sget-object p1, Lcom/deepalhome/launcher/theme/UIModeManager;->INSTANCE:Lcom/deepalhome/launcher/theme/UIModeManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/theme/UIModeManager;->isSystemNight()Z

    move-result p1

    iput-boolean p1, p0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->isNight:Z

    new-instance p1, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$mainColor$2;

    invoke-direct {p1, p0}, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$mainColor$2;-><init>(Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->mainColor$delegate:Lkotlin/SynchronizedLazyImpl;

    new-instance p1, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$hintColor$2;

    invoke-direct {p1, p0}, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$hintColor$2;-><init>(Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->hintColor$delegate:Lkotlin/SynchronizedLazyImpl;

    new-instance p1, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$textColor$2;

    invoke-direct {p1, p0}, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$textColor$2;-><init>(Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->textColor$delegate:Lkotlin/SynchronizedLazyImpl;

    new-instance p1, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$bgColor$2;

    invoke-direct {p1, p0}, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$bgColor$2;-><init>(Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->bgColor$delegate:Lkotlin/SynchronizedLazyImpl;

    new-instance p1, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$editTextBg$2;

    invoke-direct {p1, p0}, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$editTextBg$2;-><init>(Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->editTextBg$delegate:Lkotlin/SynchronizedLazyImpl;

    return-void
.end method

.method public static final access$handleActionOptionSelected(Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;Lcom/deepalhome/launcher/settings/ActionPickerOption;)V
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/deepalhome/launcher/settings/ActionPickerOption;->submenu:Lcom/deepalhome/launcher/settings/ActionPickerSubmenu;

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->currentActionSubmenu:Lcom/deepalhome/launcher/settings/ActionPickerSubmenu;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->loadActionGrid()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->tempEventActions:Ljava/util/LinkedHashMap;

    iget-object v1, p1, Lcom/deepalhome/launcher/settings/ActionPickerOption;->bodyControlType:Lcom/deepalhome/launcher/event/BodyControlType;

    if-eqz v1, :cond_1

    iget-object p1, p0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->currentTab:Lcom/deepalhome/tuotuotie/EventType;

    sget-object v2, Lcom/deepalhome/launcher/event/EventActionSerializer;->INSTANCE:Lcom/deepalhome/launcher/event/EventActionSerializer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "body:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/deepalhome/launcher/event/BodyControlType;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->autoSave()V

    goto :goto_0

    :cond_1
    iget-object v1, p1, Lcom/deepalhome/launcher/settings/ActionPickerOption;->menuType:Lcom/deepalhome/launcher/event/MenuType;

    if-eqz v1, :cond_2

    iget-object p1, p0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->currentTab:Lcom/deepalhome/tuotuotie/EventType;

    sget-object v2, Lcom/deepalhome/launcher/event/EventActionSerializer;->INSTANCE:Lcom/deepalhome/launcher/event/EventActionSerializer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "menu:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/deepalhome/launcher/event/MenuType;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->autoSave()V

    goto :goto_0

    :cond_2
    iget-object p1, p1, Lcom/deepalhome/launcher/settings/ActionPickerOption;->action:Lcom/deepalhome/launcher/task/model/TaskAction;

    instance-of v1, p1, Lcom/deepalhome/launcher/task/model/TaskAction$LaunchApp;

    if-eqz v1, :cond_3

    sget-object p1, Lcom/deepalhome/launcher/util/AppUtil;->INSTANCE:Lcom/deepalhome/launcher/util/AppUtil;

    new-instance v0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$showAppPicker$1;

    invoke-direct {v0, p0}, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$showAppPicker$1;-><init>(Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    invoke-static {v0, p0}, Lcom/deepalhome/launcher/util/AppUtil;->loadAppsAsync(Lkotlin/jvm/functions/Function1;Z)V

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    iget-object v1, p0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->currentTab:Lcom/deepalhome/tuotuotie/EventType;

    sget-object v2, Lcom/deepalhome/launcher/event/EventActionSerializer;->INSTANCE:Lcom/deepalhome/launcher/event/EventActionSerializer;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/deepalhome/launcher/event/EventActionSerializer;->encodeAction(Lcom/deepalhome/launcher/task/model/TaskAction;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->autoSave()V

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public final autoSave()V
    .locals 7

    invoke-virtual {p0}, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->updateCurrentActionDisplay()V

    iget-object v4, p0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->tempEventActions:Ljava/util/LinkedHashMap;

    const/4 v3, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->device:Lcom/deepalhome/tuotuotie/BleDevice;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v6, 0x2f

    invoke-static/range {v0 .. v6}, Lcom/deepalhome/tuotuotie/BleDevice;->copy$default(Lcom/deepalhome/tuotuotie/BleDevice;Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Lcom/deepalhome/tuotuotie/BleConnectionState;I)Lcom/deepalhome/tuotuotie/BleDevice;

    move-result-object v0

    sget-object v1, Lcom/deepalhome/tuotuotie/Tuotuotie;->INSTANCE:Lcom/deepalhome/tuotuotie/Tuotuotie;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/deepalhome/tuotuotie/Tuotuotie;->updateDevice(Lcom/deepalhome/tuotuotie/BleDevice;)V

    iget-object v1, p0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->onSave:Lkotlin/jvm/functions/Function1;

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->dialog:Landroid/app/Dialog;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void

    :cond_0
    const-string p0, "dialog"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final getHintColor()I
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->hintColor$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public final getTextColor()I
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->textColor$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public final loadActionGrid()V
    .locals 8

    iget-object v0, p0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->currentActionSubmenu:Lcom/deepalhome/launcher/settings/ActionPickerSubmenu;

    iget-object v1, p0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    :goto_0
    sget-object v0, Lcom/deepalhome/launcher/settings/ActionPickerCatalog;->INSTANCE:Lcom/deepalhome/launcher/settings/ActionPickerCatalog;

    sget-object v2, Lcom/deepalhome/launcher/settings/ActionPickerSurface;->BLE_DEVICE:Lcom/deepalhome/launcher/settings/ActionPickerSurface;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2}, Lcom/deepalhome/launcher/settings/ActionPickerCatalog;->getRootOptions(Landroid/content/Context;Lcom/deepalhome/launcher/settings/ActionPickerSurface;)Ljava/util/List;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/deepalhome/launcher/settings/ActionPickerOption;

    new-instance v4, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$GridItem;

    iget v5, v3, Lcom/deepalhome/launcher/settings/ActionPickerOption;->iconRes:I

    new-instance v6, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$loadActionGrid$items$1$1;

    invoke-direct {v6, p0, v3}, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$loadActionGrid$items$1$1;-><init>(Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;Lcom/deepalhome/launcher/settings/ActionPickerOption;)V

    iget-object v7, v3, Lcom/deepalhome/launcher/settings/ActionPickerOption;->title:Ljava/lang/String;

    iget-boolean v3, v3, Lcom/deepalhome/launcher/settings/ActionPickerOption;->tintIcon:Z

    invoke-direct {v4, v5, v7, v6, v3}, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$GridItem;-><init>(ILjava/lang/String;Lkotlin/jvm/functions/Function0;Z)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/deepalhome/launcher/settings/ActionPickerCatalog;->INSTANCE:Lcom/deepalhome/launcher/settings/ActionPickerCatalog;

    invoke-virtual {v2, v0}, Lcom/deepalhome/launcher/settings/ActionPickerCatalog;->getSubmenuOptions(Lcom/deepalhome/launcher/settings/ActionPickerSubmenu;)Ljava/util/List;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/deepalhome/launcher/settings/ActionPickerOption;

    new-instance v4, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$GridItem;

    iget v5, v3, Lcom/deepalhome/launcher/settings/ActionPickerOption;->iconRes:I

    new-instance v6, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$loadActionGrid$items$2$1;

    invoke-direct {v6, p0, v3}, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$loadActionGrid$items$2$1;-><init>(Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;Lcom/deepalhome/launcher/settings/ActionPickerOption;)V

    iget-object v7, v3, Lcom/deepalhome/launcher/settings/ActionPickerOption;->title:Ljava/lang/String;

    iget-boolean v3, v3, Lcom/deepalhome/launcher/settings/ActionPickerOption;->tintIcon:Z

    invoke-direct {v4, v5, v7, v6, v3}, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$GridItem;-><init>(ILjava/lang/String;Lkotlin/jvm/functions/Function0;Z)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    invoke-static {v2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->currentActionSubmenu:Lcom/deepalhome/launcher/settings/ActionPickerSubmenu;

    if-eqz v2, :cond_3

    new-instance v2, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$GridItem;

    const v3, 0x7f1300c4

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "getString(...)"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v3, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$loadActionGrid$1;

    invoke-direct {v3, p0}, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$loadActionGrid$1;-><init>(Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;)V

    const/4 v4, 0x1

    const v5, 0x7f0800ed

    invoke-direct {v2, v5, v1, v3, v4}, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$GridItem;-><init>(ILjava/lang/String;Lkotlin/jvm/functions/Function0;Z)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v1, p0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->binding:Lcom/deepalhome/launcher/databinding/BleDeviceConfigDialogBinding;

    if-eqz v1, :cond_4

    new-instance v2, Lcom/deepalhome/launcher/widget/ImageWidgetWallpaperPickerAdapter;

    invoke-direct {v2, p0, v0}, Lcom/deepalhome/launcher/widget/ImageWidgetWallpaperPickerAdapter;-><init>(Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;Ljava/util/ArrayList;)V

    iget-object p0, v1, Lcom/deepalhome/launcher/databinding/BleDeviceConfigDialogBinding;->rightGridRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void

    :cond_4
    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final switchTab(Lcom/deepalhome/tuotuotie/EventType;)V
    .locals 9

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->currentTab:Lcom/deepalhome/tuotuotie/EventType;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->currentActionSubmenu:Lcom/deepalhome/launcher/settings/ActionPickerSubmenu;

    iget-object v1, p0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->tabMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x4

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/deepalhome/tuotuotie/EventType;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$TabViews;

    if-ne v6, p1, :cond_0

    goto :goto_1

    :cond_0
    move v3, v5

    :goto_1
    iget-object v6, v2, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$TabViews;->text:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    iget-object v7, p0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->mainColor$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {v7}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->getTextColor()I

    move-result v7

    :goto_2
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz v3, :cond_2

    move v4, v5

    :cond_2
    iget-object v2, v2, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$TabViews;->indicator:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const-string v1, "binding"

    const/4 v2, 0x2

    const/16 v6, 0x8

    if-eq p1, v2, :cond_7

    if-eq p1, v4, :cond_5

    iget-object p1, p0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->binding:Lcom/deepalhome/launcher/databinding/BleDeviceConfigDialogBinding;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/BleDeviceConfigDialogBinding;->longPressHintTv:Landroid/widget/TextView;

    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    :cond_4
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_5
    iget-object p1, p0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->binding:Lcom/deepalhome/launcher/databinding/BleDeviceConfigDialogBinding;

    if-eqz p1, :cond_6

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/BleDeviceConfigDialogBinding;->longPressHintTv:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    invoke-virtual {p0}, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->updateCurrentActionDisplay()V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->loadActionGrid()V

    return-void

    :cond_6
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_7
    invoke-virtual {p0}, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->updateCurrentActionDisplay()V

    iget-object p1, p0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->binding:Lcom/deepalhome/launcher/databinding/BleDeviceConfigDialogBinding;

    if-eqz p1, :cond_a

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/BleDeviceConfigDialogBinding;->longPressHintTv:Landroid/widget/TextView;

    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    sget-object p1, Lcom/deepalhome/launcher/event/CycleType;->$ENTRIES:Lkotlin/enums/EnumEntriesList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v4, Lkotlin/jvm/internal/ArrayIterator;

    const/4 v5, 0x2

    invoke-direct {v4, v5, p1}, Lkotlin/jvm/internal/ArrayIterator;-><init>(ILjava/lang/Object;)V

    :goto_4
    invoke-virtual {v4}, Lkotlin/jvm/internal/ArrayIterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {v4}, Lkotlin/jvm/internal/ArrayIterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/event/CycleType;

    new-instance v5, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$GridItem;

    invoke-virtual {p1}, Lcom/deepalhome/launcher/event/CycleType;->getIconRes()I

    move-result v6

    invoke-virtual {p1}, Lcom/deepalhome/launcher/event/CycleType;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$loadCycleGrid$items$1$1;

    invoke-direct {v8, p0, p1}, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$loadCycleGrid$items$1$1;-><init>(Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;Lcom/deepalhome/launcher/event/CycleType;)V

    invoke-direct {v5, v6, v7, v8, v3}, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog$GridItem;-><init>(ILjava/lang/String;Lkotlin/jvm/functions/Function0;Z)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_8
    iget-object p1, p0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->binding:Lcom/deepalhome/launcher/databinding/BleDeviceConfigDialogBinding;

    if-eqz p1, :cond_9

    new-instance v0, Lcom/deepalhome/launcher/widget/ImageWidgetWallpaperPickerAdapter;

    invoke-direct {v0, p0, v2}, Lcom/deepalhome/launcher/widget/ImageWidgetWallpaperPickerAdapter;-><init>(Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;Ljava/util/ArrayList;)V

    iget-object p0, p1, Lcom/deepalhome/launcher/databinding/BleDeviceConfigDialogBinding;->rightGridRv:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void

    :cond_9
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0
.end method

.method public final updateCurrentActionDisplay()V
    .locals 5

    iget-object v0, p0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->tempEventActions:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->currentTab:Lcom/deepalhome/tuotuotie/EventType;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "binding"

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->binding:Lcom/deepalhome/launcher/databinding/BleDeviceConfigDialogBinding;

    if-eqz v3, :cond_1

    sget-object v4, Lcom/deepalhome/launcher/event/EventActionSerializer;->INSTANCE:Lcom/deepalhome/launcher/event/EventActionSerializer;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/deepalhome/launcher/event/EventActionSerializer;->getDisplayText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, v3, Lcom/deepalhome/launcher/databinding/BleDeviceConfigDialogBinding;->currentActionTv:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->binding:Lcom/deepalhome/launcher/databinding/BleDeviceConfigDialogBinding;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/BleDeviceConfigDialogBinding;->clearActionBtn:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-object v0, p0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->binding:Lcom/deepalhome/launcher/databinding/BleDeviceConfigDialogBinding;

    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->context:Landroid/content/Context;

    const v4, 0x7f130127

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/BleDeviceConfigDialogBinding;->currentActionTv:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/BleDeviceConfigDialog;->binding:Lcom/deepalhome/launcher/databinding/BleDeviceConfigDialogBinding;

    if-eqz p0, :cond_3

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/BleDeviceConfigDialogBinding;->clearActionBtn:Landroid/widget/Button;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.class public final Lcom/deepalhome/launcher/settings/ActionPickerCatalog;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/settings/ActionPickerCatalog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/settings/ActionPickerCatalog;

    invoke-direct {v0}, Lcom/deepalhome/launcher/settings/ActionPickerCatalog;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/settings/ActionPickerCatalog;->INSTANCE:Lcom/deepalhome/launcher/settings/ActionPickerCatalog;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static actionOption$default(Lcom/deepalhome/launcher/settings/ActionPickerCatalog;Ljava/lang/String;ILjava/lang/String;Lcom/deepalhome/launcher/task/model/TaskAction;)Lcom/deepalhome/launcher/settings/ActionPickerOption;
    .locals 10

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/deepalhome/launcher/settings/ActionPickerOption;

    const/4 v5, 0x0

    const/16 v9, 0x70

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v9}, Lcom/deepalhome/launcher/settings/ActionPickerOption;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/deepalhome/launcher/task/model/TaskAction;Lcom/deepalhome/launcher/event/BodyControlType;Lcom/deepalhome/launcher/event/MenuType;Lcom/deepalhome/launcher/settings/ActionPickerSubmenu;ZI)V

    return-object p0
.end method

.method public static getRootOptions(Landroid/content/Context;Lcom/deepalhome/launcher/settings/ActionPickerSurface;)Ljava/util/List;
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "context"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v2, Lcom/deepalhome/launcher/navigation/profile/VehicleBranchResolver;->INSTANCE:Lcom/deepalhome/launcher/navigation/profile/VehicleBranchResolver;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/navigation/profile/VehicleBranchResolver;->current()Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;

    move-result-object v2

    sget-object v3, Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;->S05:Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    sget-object v6, Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;->EZ6:Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;

    if-ne v2, v6, :cond_1

    goto :goto_1

    :cond_1
    move v4, v5

    :goto_1
    sget-object v2, Lcom/deepalhome/launcher/settings/ActionPickerSurface;->Companion:Lcom/deepalhome/launcher/settings/ActionPickerSurface$Companion;

    sget-object v6, Lcom/deepalhome/launcher/settings/ActionPickerSurface;->SCHEDULED_TASK:Lcom/deepalhome/launcher/settings/ActionPickerSurface;

    sget-object v7, Lcom/deepalhome/launcher/settings/ActionPickerSurface;->BLE_DEVICE:Lcom/deepalhome/launcher/settings/ActionPickerSurface;

    sget-object v8, Lcom/deepalhome/launcher/settings/ActionPickerSurface;->FLOATING_BALL:Lcom/deepalhome/launcher/settings/ActionPickerSurface;

    filled-new-array {v6, v7, v8}, [Lcom/deepalhome/launcher/settings/ActionPickerSurface;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v2, v5

    move/from16 v20, v2

    :goto_2
    const/4 v10, 0x3

    if-ge v2, v10, :cond_2

    aget-object v10, v9, v2

    invoke-virtual {v10}, Lcom/deepalhome/launcher/settings/ActionPickerSurface;->getBit()I

    move-result v10

    or-int v20, v20, v10

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    filled-new-array {v6, v8}, [Lcom/deepalhome/launcher/settings/ActionPickerSurface;

    move-result-object v2

    move/from16 v21, v5

    :goto_3
    const/4 v9, 0x2

    if-ge v5, v9, :cond_3

    aget-object v9, v2, v5

    invoke-virtual {v9}, Lcom/deepalhome/launcher/settings/ActionPickerSurface;->getBit()I

    move-result v9

    or-int v21, v21, v9

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {v7}, Lcom/deepalhome/launcher/settings/ActionPickerSurface;->getBit()I

    move-result v2

    invoke-virtual {v8}, Lcom/deepalhome/launcher/settings/ActionPickerSurface;->getBit()I

    move-result v5

    invoke-virtual {v6}, Lcom/deepalhome/launcher/settings/ActionPickerSurface;->getBit()I

    move-result v6

    new-instance v9, Lkotlin/collections/builders/ListBuilder;

    invoke-direct {v9}, Lkotlin/collections/builders/ListBuilder;-><init>()V

    new-instance v8, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;

    sget-object v13, Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$1;->INSTANCE:Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$1;

    sget-object v18, Lcom/deepalhome/launcher/settings/ActionPickerSubmenu;->TRIGGERLESS_TASK:Lcom/deepalhome/launcher/settings/ActionPickerSubmenu;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x70

    const v12, 0x7f0800e9

    const/4 v15, 0x0

    const-string v11, "triggerless_task"

    move-object v10, v8

    move/from16 v14, v20

    invoke-direct/range {v10 .. v19}, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;-><init>(Ljava/lang/String;ILkotlin/jvm/functions/Function1;ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/deepalhome/launcher/event/BodyControlType;Lcom/deepalhome/launcher/settings/ActionPickerSubmenu;I)V

    invoke-virtual {v9, v8}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    new-instance v15, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;

    sget-object v11, Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$2;->INSTANCE:Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$2;

    sget-object v14, Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$3;->INSTANCE:Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$3;

    const/16 v18, 0x1d0

    const v10, 0x7f0800ce

    const/4 v13, 0x0

    const-string v12, "delay"

    move-object v8, v15

    move-object/from16 v22, v9

    move-object v9, v12

    move v12, v6

    move-object/from16 v23, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move/from16 v17, v18

    invoke-direct/range {v8 .. v17}, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;-><init>(Ljava/lang/String;ILkotlin/jvm/functions/Function1;ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/deepalhome/launcher/event/BodyControlType;Lcom/deepalhome/launcher/settings/ActionPickerSubmenu;I)V

    move-object/from16 v8, v22

    move-object/from16 v9, v23

    invoke-virtual {v8, v9}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    new-instance v15, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;

    sget-object v12, Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$4;->INSTANCE:Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$4;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1f0

    const v11, 0x7f080133

    const/4 v14, 0x0

    const/16 v19, 0x0

    const-string v10, "none"

    move-object v9, v15

    move v13, v5

    move-object v5, v15

    move-object/from16 v15, v19

    invoke-direct/range {v9 .. v18}, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;-><init>(Ljava/lang/String;ILkotlin/jvm/functions/Function1;ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/deepalhome/launcher/event/BodyControlType;Lcom/deepalhome/launcher/settings/ActionPickerSubmenu;I)V

    invoke-virtual {v8, v5}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;

    sget-object v11, Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$5;->INSTANCE:Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$5;

    sget-object v16, Lcom/deepalhome/launcher/settings/ActionPickerSubmenu;->VOICE_BROADCAST:Lcom/deepalhome/launcher/settings/ActionPickerSubmenu;

    const/4 v15, 0x0

    const/16 v17, 0x170

    const v10, 0x7f0800ea

    const/4 v13, 0x0

    const-string v9, "voice_broadcast"

    move-object v12, v8

    move-object v8, v5

    move-object/from16 v24, v12

    move v12, v6

    invoke-direct/range {v8 .. v17}, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;-><init>(Ljava/lang/String;ILkotlin/jvm/functions/Function1;ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/deepalhome/launcher/event/BodyControlType;Lcom/deepalhome/launcher/settings/ActionPickerSubmenu;I)V

    move-object/from16 v8, v24

    invoke-virtual {v8, v5}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;

    sget-object v12, Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$6;->INSTANCE:Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$6;

    sget-object v15, Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$7;->INSTANCE:Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$7;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1d0

    const v11, 0x7f0800ed

    const-string v10, "system_back"

    move-object v9, v5

    move/from16 v13, v21

    invoke-direct/range {v9 .. v18}, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;-><init>(Ljava/lang/String;ILkotlin/jvm/functions/Function1;ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/deepalhome/launcher/event/BodyControlType;Lcom/deepalhome/launcher/settings/ActionPickerSubmenu;I)V

    invoke-virtual {v8, v5}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;

    sget-object v13, Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$8;->INSTANCE:Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$8;

    sget-object v16, Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$9;->INSTANCE:Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$9;

    const/16 v18, 0x0

    const/16 v19, 0x1d0

    const v12, 0x7f0800cb

    const/4 v15, 0x0

    const-string v11, "launch_app"

    move-object v10, v5

    move/from16 v14, v20

    invoke-direct/range {v10 .. v19}, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;-><init>(Ljava/lang/String;ILkotlin/jvm/functions/Function1;ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/deepalhome/launcher/event/BodyControlType;Lcom/deepalhome/launcher/settings/ActionPickerSubmenu;I)V

    invoke-virtual {v8, v5}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;

    sget-object v13, Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$10;->INSTANCE:Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$10;

    sget-object v18, Lcom/deepalhome/launcher/settings/ActionPickerSubmenu;->DEEPAL_PLUS_CONTROL:Lcom/deepalhome/launcher/settings/ActionPickerSubmenu;

    const/16 v16, 0x0

    const/16 v19, 0x70

    const v12, 0x7f100014

    const-string v11, "deepal_plus_control"

    move-object v10, v5

    invoke-direct/range {v10 .. v19}, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;-><init>(Ljava/lang/String;ILkotlin/jvm/functions/Function1;ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/deepalhome/launcher/event/BodyControlType;Lcom/deepalhome/launcher/settings/ActionPickerSubmenu;I)V

    invoke-virtual {v8, v5}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;

    sget-object v12, Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$11;->INSTANCE:Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$11;

    sget-object v17, Lcom/deepalhome/launcher/settings/ActionPickerSubmenu;->BLE_CYCLE:Lcom/deepalhome/launcher/settings/ActionPickerSubmenu;

    const/16 v18, 0x70

    const v11, 0x7f0800e0

    const/4 v14, 0x0

    const-string v10, "ble_cycle"

    move-object v9, v5

    move v13, v2

    invoke-direct/range {v9 .. v18}, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;-><init>(Ljava/lang/String;ILkotlin/jvm/functions/Function1;ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/deepalhome/launcher/event/BodyControlType;Lcom/deepalhome/launcher/settings/ActionPickerSubmenu;I)V

    invoke-virtual {v8, v5}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;

    sget-object v13, Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$12;->INSTANCE:Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$12;

    sget-object v16, Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$13;->INSTANCE:Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$13;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1d0

    const v12, 0x7f0800e6

    const-string v11, "launch_system_launcher"

    move-object v10, v5

    move/from16 v14, v20

    invoke-direct/range {v10 .. v19}, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;-><init>(Ljava/lang/String;ILkotlin/jvm/functions/Function1;ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/deepalhome/launcher/event/BodyControlType;Lcom/deepalhome/launcher/settings/ActionPickerSubmenu;I)V

    invoke-virtual {v8, v5}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;

    sget-object v13, Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$14;->INSTANCE:Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$14;

    sget-object v16, Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$15;->INSTANCE:Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$15;

    const v12, 0x7f0800db

    const-string v11, "launch_music"

    move-object v10, v5

    invoke-direct/range {v10 .. v19}, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;-><init>(Ljava/lang/String;ILkotlin/jvm/functions/Function1;ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/deepalhome/launcher/event/BodyControlType;Lcom/deepalhome/launcher/settings/ActionPickerSubmenu;I)V

    invoke-virtual {v8, v5}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;

    sget-object v13, Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$16;->INSTANCE:Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$16;

    sget-object v16, Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$17;->INSTANCE:Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$17;

    const v12, 0x7f0800c0

    const-string v11, "toggle_current_song_favorite"

    move-object v10, v5

    invoke-direct/range {v10 .. v19}, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;-><init>(Ljava/lang/String;ILkotlin/jvm/functions/Function1;ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/deepalhome/launcher/event/BodyControlType;Lcom/deepalhome/launcher/settings/ActionPickerSubmenu;I)V

    invoke-virtual {v8, v5}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;

    sget-object v13, Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$18;->INSTANCE:Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$18;

    sget-object v16, Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$19;->INSTANCE:Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$19;

    const v12, 0x7f0800da

    const-string v11, "launch_map"

    move-object v10, v5

    invoke-direct/range {v10 .. v19}, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;-><init>(Ljava/lang/String;ILkotlin/jvm/functions/Function1;ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/deepalhome/launcher/event/BodyControlType;Lcom/deepalhome/launcher/settings/ActionPickerSubmenu;I)V

    invoke-virtual {v8, v5}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;

    sget-object v13, Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$20;->INSTANCE:Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$20;

    new-instance v15, Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$21;

    invoke-direct {v15, v3}, Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$21;-><init>(Z)V

    sget-object v16, Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$22;->INSTANCE:Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$22;

    const/16 v19, 0x1c0

    const v12, 0x7f0800ea

    const-string v11, "toggle_real_time_voice"

    move-object v10, v5

    invoke-direct/range {v10 .. v19}, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;-><init>(Ljava/lang/String;ILkotlin/jvm/functions/Function1;ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/deepalhome/launcher/event/BodyControlType;Lcom/deepalhome/launcher/settings/ActionPickerSubmenu;I)V

    invoke-virtual {v8, v5}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;

    sget-object v13, Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$23;->INSTANCE:Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$23;

    new-instance v15, Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$24;

    invoke-direct {v15, v3}, Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$24;-><init>(Z)V

    sget-object v18, Lcom/deepalhome/launcher/settings/ActionPickerSubmenu;->THEME_MODE:Lcom/deepalhome/launcher/settings/ActionPickerSubmenu;

    const/16 v16, 0x0

    const/16 v19, 0x160

    const v12, 0x7f0800e8

    const-string v11, "theme_mode"

    move-object v10, v5

    invoke-direct/range {v10 .. v19}, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;-><init>(Ljava/lang/String;ILkotlin/jvm/functions/Function1;ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/deepalhome/launcher/event/BodyControlType;Lcom/deepalhome/launcher/settings/ActionPickerSubmenu;I)V

    invoke-virtual {v8, v5}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;

    sget-object v13, Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$25;->INSTANCE:Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$25;

    new-instance v15, Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$26;

    invoke-direct {v15, v3}, Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$26;-><init>(Z)V

    sget-object v18, Lcom/deepalhome/launcher/settings/ActionPickerSubmenu;->DRIVE_MODE:Lcom/deepalhome/launcher/settings/ActionPickerSubmenu;

    const v12, 0x7f08024e

    const-string v11, "drive_mode"

    move-object v10, v5

    invoke-direct/range {v10 .. v19}, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;-><init>(Ljava/lang/String;ILkotlin/jvm/functions/Function1;ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/deepalhome/launcher/event/BodyControlType;Lcom/deepalhome/launcher/settings/ActionPickerSubmenu;I)V

    invoke-virtual {v8, v5}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;

    sget-object v13, Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$27;->INSTANCE:Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$27;

    new-instance v15, Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$28;

    invoke-direct {v15, v3}, Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$28;-><init>(Z)V

    sget-object v18, Lcom/deepalhome/launcher/settings/ActionPickerSubmenu;->POWER_MODE:Lcom/deepalhome/launcher/settings/ActionPickerSubmenu;

    const v12, 0x7f0800dd

    const-string v11, "power_mode"

    move-object v10, v5

    invoke-direct/range {v10 .. v19}, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;-><init>(Ljava/lang/String;ILkotlin/jvm/functions/Function1;ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/deepalhome/launcher/event/BodyControlType;Lcom/deepalhome/launcher/settings/ActionPickerSubmenu;I)V

    invoke-virtual {v8, v5}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;

    sget-object v13, Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$29;->INSTANCE:Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$29;

    new-instance v15, Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$30;

    invoke-direct {v15, v3}, Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$30;-><init>(Z)V

    sget-object v16, Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$31;->INSTANCE:Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$31;

    const/16 v18, 0x0

    const/16 v19, 0x1c0

    const v12, 0x7f0800cf

    const-string v11, "toggle_fog_light_strobe"

    move-object v10, v5

    invoke-direct/range {v10 .. v19}, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;-><init>(Ljava/lang/String;ILkotlin/jvm/functions/Function1;ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/deepalhome/launcher/event/BodyControlType;Lcom/deepalhome/launcher/settings/ActionPickerSubmenu;I)V

    invoke-virtual {v8, v5}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;

    sget-object v13, Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$32;->INSTANCE:Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$32;

    sget-object v18, Lcom/deepalhome/launcher/settings/ActionPickerSubmenu;->REAR_FOG_LIGHT:Lcom/deepalhome/launcher/settings/ActionPickerSubmenu;

    const/16 v16, 0x0

    const/16 v19, 0x170

    const/4 v15, 0x0

    const-string v11, "rear_fog_light"

    move-object v10, v5

    invoke-direct/range {v10 .. v19}, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;-><init>(Ljava/lang/String;ILkotlin/jvm/functions/Function1;ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/deepalhome/launcher/event/BodyControlType;Lcom/deepalhome/launcher/settings/ActionPickerSubmenu;I)V

    invoke-virtual {v8, v5}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;

    sget-object v13, Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$33;->INSTANCE:Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$33;

    sget-object v18, Lcom/deepalhome/launcher/settings/ActionPickerSubmenu;->LOW_BEAM:Lcom/deepalhome/launcher/settings/ActionPickerSubmenu;

    const v12, 0x7f08016d

    const-string v11, "low_beam"

    move-object v10, v5

    invoke-direct/range {v10 .. v19}, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;-><init>(Ljava/lang/String;ILkotlin/jvm/functions/Function1;ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/deepalhome/launcher/event/BodyControlType;Lcom/deepalhome/launcher/settings/ActionPickerSubmenu;I)V

    invoke-virtual {v8, v5}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;

    sget-object v12, Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$34;->INSTANCE:Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$34;

    new-instance v14, Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$35;

    invoke-direct {v14, v3}, Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$35;-><init>(Z)V

    sget-object v17, Lcom/deepalhome/launcher/settings/ActionPickerSubmenu;->SCREEN_BRIGHTNESS:Lcom/deepalhome/launcher/settings/ActionPickerSubmenu;

    const/16 v18, 0x160

    const v11, 0x7f0800e2

    const-string v10, "screen_brightness"

    move-object v9, v5

    move/from16 v13, v21

    invoke-direct/range {v9 .. v18}, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;-><init>(Ljava/lang/String;ILkotlin/jvm/functions/Function1;ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/deepalhome/launcher/event/BodyControlType;Lcom/deepalhome/launcher/settings/ActionPickerSubmenu;I)V

    invoke-virtual {v8, v5}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;

    sget-object v12, Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$36;->INSTANCE:Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$36;

    new-instance v14, Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$37;

    invoke-direct {v14, v3}, Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$37;-><init>(Z)V

    sget-object v15, Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$38;->INSTANCE:Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$38;

    const/16 v17, 0x0

    const/16 v18, 0x1c0

    const v11, 0x7f080272

    const-string v10, "set_volume"

    move-object v9, v5

    invoke-direct/range {v9 .. v18}, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;-><init>(Ljava/lang/String;ILkotlin/jvm/functions/Function1;ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/deepalhome/launcher/event/BodyControlType;Lcom/deepalhome/launcher/settings/ActionPickerSubmenu;I)V

    invoke-virtual {v8, v5}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;

    sget-object v12, Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$39;->INSTANCE:Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$39;

    new-instance v14, Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$40;

    invoke-direct {v14, v3}, Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$40;-><init>(Z)V

    sget-object v15, Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$41;->INSTANCE:Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$41;

    const v11, 0x7f080271

    const-string v10, "auto_volume_by_speed"

    move-object v9, v5

    invoke-direct/range {v9 .. v18}, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;-><init>(Ljava/lang/String;ILkotlin/jvm/functions/Function1;ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/deepalhome/launcher/event/BodyControlType;Lcom/deepalhome/launcher/settings/ActionPickerSubmenu;I)V

    invoke-virtual {v8, v5}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;

    sget-object v11, Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$42;->INSTANCE:Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$42;

    new-instance v13, Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$43;

    invoke-direct {v13, v3}, Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$43;-><init>(Z)V

    sget-object v14, Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$44;->INSTANCE:Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$44;

    const/4 v15, 0x0

    const/16 v17, 0xc0

    const v10, 0x7f0800d9

    const-string v9, "activate_magisk"

    move-object v12, v8

    move-object v8, v5

    move-object/from16 v25, v12

    move v12, v6

    invoke-direct/range {v8 .. v17}, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;-><init>(Ljava/lang/String;ILkotlin/jvm/functions/Function1;ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/deepalhome/launcher/event/BodyControlType;Lcom/deepalhome/launcher/settings/ActionPickerSubmenu;I)V

    move-object/from16 v15, v25

    invoke-virtual {v15, v5}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;

    sget-object v11, Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$45;->INSTANCE:Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$45;

    new-instance v13, Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$46;

    invoke-direct {v13, v3}, Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$46;-><init>(Z)V

    sget-object v14, Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$47;->INSTANCE:Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$47;

    const/16 v17, 0x0

    const v10, 0x7f0800de

    const-string v9, "start_projection_hook"

    move-object v8, v5

    move-object/from16 v26, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move/from16 v17, v18

    invoke-direct/range {v8 .. v17}, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;-><init>(Ljava/lang/String;ILkotlin/jvm/functions/Function1;ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/deepalhome/launcher/event/BodyControlType;Lcom/deepalhome/launcher/settings/ActionPickerSubmenu;I)V

    move-object/from16 v15, v26

    invoke-virtual {v15, v5}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    if-nez v4, :cond_4

    if-nez v3, :cond_4

    new-instance v4, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;

    sget-object v11, Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$48;->INSTANCE:Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$48;

    new-instance v13, Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$49;

    invoke-direct {v13, v3}, Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$49;-><init>(Z)V

    sget-object v14, Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$50;->INSTANCE:Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$50;

    const/4 v3, 0x0

    const/16 v17, 0x1c0

    const-string v9, "toggle_rear_seat_belt_alarm"

    const v10, 0x7f0800df

    const/16 v16, 0x0

    move-object v8, v4

    move v12, v6

    move-object v5, v15

    move-object v15, v3

    invoke-direct/range {v8 .. v17}, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;-><init>(Ljava/lang/String;ILkotlin/jvm/functions/Function1;ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/deepalhome/launcher/event/BodyControlType;Lcom/deepalhome/launcher/settings/ActionPickerSubmenu;I)V

    invoke-virtual {v5, v4}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_4
    move-object v5, v15

    :goto_4
    new-instance v3, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;

    sget-object v12, Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$51;->INSTANCE:Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$51;

    sget-object v15, Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$52;->INSTANCE:Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$52;

    const/16 v16, 0x0

    const/16 v18, 0x1d0

    const-string v10, "media_previous"

    const v11, 0x7f0800db

    const/4 v14, 0x0

    const/16 v17, 0x0

    move-object v9, v3

    move v13, v2

    invoke-direct/range {v9 .. v18}, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;-><init>(Ljava/lang/String;ILkotlin/jvm/functions/Function1;ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/deepalhome/launcher/event/BodyControlType;Lcom/deepalhome/launcher/settings/ActionPickerSubmenu;I)V

    invoke-virtual {v5, v3}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;

    sget-object v12, Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$53;->INSTANCE:Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$53;

    sget-object v15, Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$54;->INSTANCE:Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$54;

    const-string v10, "media_next"

    move-object v9, v3

    invoke-direct/range {v9 .. v18}, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;-><init>(Ljava/lang/String;ILkotlin/jvm/functions/Function1;ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/deepalhome/launcher/event/BodyControlType;Lcom/deepalhome/launcher/settings/ActionPickerSubmenu;I)V

    invoke-virtual {v5, v3}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;

    sget-object v12, Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$55;->INSTANCE:Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$55;

    sget-object v15, Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$56;->INSTANCE:Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$56;

    const-string v10, "toggle_air_condition"

    const v11, 0x7f08010d

    move-object v9, v3

    invoke-direct/range {v9 .. v18}, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;-><init>(Ljava/lang/String;ILkotlin/jvm/functions/Function1;ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/deepalhome/launcher/event/BodyControlType;Lcom/deepalhome/launcher/settings/ActionPickerSubmenu;I)V

    invoke-virtual {v5, v3}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;

    sget-object v12, Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$57;->INSTANCE:Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$57;

    sget-object v15, Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$58;->INSTANCE:Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$58;

    const-string v10, "toggle_front_defrost"

    const v11, 0x7f08010c

    move-object v9, v3

    invoke-direct/range {v9 .. v18}, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;-><init>(Ljava/lang/String;ILkotlin/jvm/functions/Function1;ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/deepalhome/launcher/event/BodyControlType;Lcom/deepalhome/launcher/settings/ActionPickerSubmenu;I)V

    invoke-virtual {v5, v3}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;

    sget-object v12, Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$59;->INSTANCE:Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$59;

    sget-object v15, Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$60;->INSTANCE:Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$60;

    const-string v10, "toggle_rear_defrost"

    const v11, 0x7f08010e

    move-object v9, v3

    invoke-direct/range {v9 .. v18}, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;-><init>(Ljava/lang/String;ILkotlin/jvm/functions/Function1;ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/deepalhome/launcher/event/BodyControlType;Lcom/deepalhome/launcher/settings/ActionPickerSubmenu;I)V

    invoke-virtual {v5, v3}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;

    sget-object v12, Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$61;->INSTANCE:Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$61;

    sget-object v17, Lcom/deepalhome/launcher/settings/ActionPickerSubmenu;->SEAT_VENTILATION:Lcom/deepalhome/launcher/settings/ActionPickerSubmenu;

    const/4 v15, 0x0

    const/16 v18, 0x170

    const-string v10, "seat_ventilation"

    const v11, 0x7f080123

    move-object v9, v3

    invoke-direct/range {v9 .. v18}, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;-><init>(Ljava/lang/String;ILkotlin/jvm/functions/Function1;ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/deepalhome/launcher/event/BodyControlType;Lcom/deepalhome/launcher/settings/ActionPickerSubmenu;I)V

    invoke-virtual {v5, v3}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;

    sget-object v12, Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$62;->INSTANCE:Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$62;

    sget-object v17, Lcom/deepalhome/launcher/settings/ActionPickerSubmenu;->SEAT_HEATING:Lcom/deepalhome/launcher/settings/ActionPickerSubmenu;

    const-string v10, "seat_heating"

    const v11, 0x7f080115

    move-object v9, v3

    invoke-direct/range {v9 .. v18}, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;-><init>(Ljava/lang/String;ILkotlin/jvm/functions/Function1;ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/deepalhome/launcher/event/BodyControlType;Lcom/deepalhome/launcher/settings/ActionPickerSubmenu;I)V

    invoke-virtual {v5, v3}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;

    sget-object v16, Lcom/deepalhome/launcher/event/BodyControlType;->TOGGLE_TRUNK:Lcom/deepalhome/launcher/event/BodyControlType;

    invoke-virtual/range {v16 .. v16}, Lcom/deepalhome/launcher/event/BodyControlType;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Lcom/deepalhome/launcher/event/BodyControlType;->getIconRes()I

    move-result v6

    sget-object v17, Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$63;->INSTANCE:Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$63;

    new-instance v18, Landroidx/activity/OnBackPressedDispatcher$addCallback$1;

    const-string v13, "isSupported()Z"

    const/4 v14, 0x0

    const/4 v9, 0x0

    const-class v11, Lcom/deepalhome/launcher/event/BodyControlType;

    const-string v12, "isSupported"

    const/4 v15, 0x2

    move-object/from16 v8, v18

    move-object/from16 v10, v16

    invoke-direct/range {v8 .. v15}, Landroidx/activity/OnBackPressedDispatcher$addCallback$1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v15, 0x0

    const/16 v8, 0x1a0

    const/16 v19, 0x0

    move-object v9, v3

    move-object v10, v4

    move v11, v6

    move-object/from16 v12, v17

    move v13, v2

    move-object/from16 v14, v18

    move-object/from16 v17, v19

    move/from16 v18, v8

    invoke-direct/range {v9 .. v18}, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;-><init>(Ljava/lang/String;ILkotlin/jvm/functions/Function1;ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/deepalhome/launcher/event/BodyControlType;Lcom/deepalhome/launcher/settings/ActionPickerSubmenu;I)V

    invoke-virtual {v5, v3}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;

    sget-object v16, Lcom/deepalhome/launcher/event/BodyControlType;->EXPAND_DOOR_HANDLE:Lcom/deepalhome/launcher/event/BodyControlType;

    invoke-virtual/range {v16 .. v16}, Lcom/deepalhome/launcher/event/BodyControlType;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Lcom/deepalhome/launcher/event/BodyControlType;->getIconRes()I

    move-result v6

    sget-object v17, Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$65;->INSTANCE:Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$65;

    new-instance v18, Landroidx/activity/OnBackPressedDispatcher$addCallback$1;

    const-string v13, "isSupported()Z"

    const/4 v14, 0x0

    const/4 v9, 0x0

    const-class v11, Lcom/deepalhome/launcher/event/BodyControlType;

    const-string v12, "isSupported"

    const/4 v15, 0x3

    move-object/from16 v8, v18

    move-object/from16 v10, v16

    invoke-direct/range {v8 .. v15}, Landroidx/activity/OnBackPressedDispatcher$addCallback$1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v15, 0x0

    const/16 v8, 0x1a0

    const/16 v19, 0x0

    move-object v9, v3

    move-object v10, v4

    move v11, v6

    move-object/from16 v12, v17

    move v13, v2

    move-object/from16 v14, v18

    move-object/from16 v17, v19

    move/from16 v18, v8

    invoke-direct/range {v9 .. v18}, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;-><init>(Ljava/lang/String;ILkotlin/jvm/functions/Function1;ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/deepalhome/launcher/event/BodyControlType;Lcom/deepalhome/launcher/settings/ActionPickerSubmenu;I)V

    invoke-virtual {v5, v3}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;

    sget-object v16, Lcom/deepalhome/launcher/event/BodyControlType;->RETRACT_DOOR_HANDLE:Lcom/deepalhome/launcher/event/BodyControlType;

    invoke-virtual/range {v16 .. v16}, Lcom/deepalhome/launcher/event/BodyControlType;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Lcom/deepalhome/launcher/event/BodyControlType;->getIconRes()I

    move-result v6

    sget-object v17, Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$67;->INSTANCE:Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$67;

    new-instance v18, Landroidx/activity/OnBackPressedDispatcher$addCallback$1;

    const-string v13, "isSupported()Z"

    const/4 v14, 0x0

    const/4 v9, 0x0

    const-class v11, Lcom/deepalhome/launcher/event/BodyControlType;

    const-string v12, "isSupported"

    const/4 v15, 0x4

    move-object/from16 v8, v18

    move-object/from16 v10, v16

    invoke-direct/range {v8 .. v15}, Landroidx/activity/OnBackPressedDispatcher$addCallback$1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v15, 0x0

    const/16 v8, 0x1a0

    const/16 v19, 0x0

    move-object v9, v3

    move-object v10, v4

    move v11, v6

    move-object/from16 v12, v17

    move v13, v2

    move-object/from16 v14, v18

    move-object/from16 v17, v19

    move/from16 v18, v8

    invoke-direct/range {v9 .. v18}, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;-><init>(Ljava/lang/String;ILkotlin/jvm/functions/Function1;ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/deepalhome/launcher/event/BodyControlType;Lcom/deepalhome/launcher/settings/ActionPickerSubmenu;I)V

    invoke-virtual {v5, v3}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;

    sget-object v16, Lcom/deepalhome/launcher/event/BodyControlType;->OPEN_FUEL_CAP:Lcom/deepalhome/launcher/event/BodyControlType;

    invoke-virtual/range {v16 .. v16}, Lcom/deepalhome/launcher/event/BodyControlType;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Lcom/deepalhome/launcher/event/BodyControlType;->getIconRes()I

    move-result v6

    sget-object v17, Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$69;->INSTANCE:Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$69;

    new-instance v18, Landroidx/activity/OnBackPressedDispatcher$addCallback$1;

    const-string v13, "isSupported()Z"

    const/4 v14, 0x0

    const/4 v9, 0x0

    const-class v11, Lcom/deepalhome/launcher/event/BodyControlType;

    const-string v12, "isSupported"

    const/4 v15, 0x5

    move-object/from16 v8, v18

    move-object/from16 v10, v16

    invoke-direct/range {v8 .. v15}, Landroidx/activity/OnBackPressedDispatcher$addCallback$1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v15, 0x0

    const/16 v8, 0x1a0

    const/16 v19, 0x0

    move-object v9, v3

    move-object v10, v4

    move v11, v6

    move-object/from16 v12, v17

    move v13, v2

    move-object/from16 v14, v18

    move-object/from16 v17, v19

    move/from16 v18, v8

    invoke-direct/range {v9 .. v18}, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;-><init>(Ljava/lang/String;ILkotlin/jvm/functions/Function1;ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/deepalhome/launcher/event/BodyControlType;Lcom/deepalhome/launcher/settings/ActionPickerSubmenu;I)V

    invoke-virtual {v5, v3}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;

    sget-object v16, Lcom/deepalhome/launcher/event/BodyControlType;->OPEN_GLOVE_BOX:Lcom/deepalhome/launcher/event/BodyControlType;

    invoke-virtual/range {v16 .. v16}, Lcom/deepalhome/launcher/event/BodyControlType;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Lcom/deepalhome/launcher/event/BodyControlType;->getIconRes()I

    move-result v6

    sget-object v17, Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$71;->INSTANCE:Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$71;

    new-instance v18, Landroidx/activity/OnBackPressedDispatcher$addCallback$1;

    const-string v13, "isSupported()Z"

    const/4 v14, 0x0

    const/4 v9, 0x0

    const-class v11, Lcom/deepalhome/launcher/event/BodyControlType;

    const-string v12, "isSupported"

    const/4 v15, 0x6

    move-object/from16 v8, v18

    move-object/from16 v10, v16

    invoke-direct/range {v8 .. v15}, Landroidx/activity/OnBackPressedDispatcher$addCallback$1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v15, 0x0

    const/16 v8, 0x1a0

    const/16 v19, 0x0

    move-object v9, v3

    move-object v10, v4

    move v11, v6

    move-object/from16 v12, v17

    move v13, v2

    move-object/from16 v14, v18

    move-object/from16 v17, v19

    move/from16 v18, v8

    invoke-direct/range {v9 .. v18}, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;-><init>(Ljava/lang/String;ILkotlin/jvm/functions/Function1;ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/deepalhome/launcher/event/BodyControlType;Lcom/deepalhome/launcher/settings/ActionPickerSubmenu;I)V

    invoke-virtual {v5, v3}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;

    sget-object v16, Lcom/deepalhome/launcher/event/BodyControlType;->TOGGLE_MIRROR_FOLD:Lcom/deepalhome/launcher/event/BodyControlType;

    invoke-virtual/range {v16 .. v16}, Lcom/deepalhome/launcher/event/BodyControlType;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Lcom/deepalhome/launcher/event/BodyControlType;->getIconRes()I

    move-result v6

    sget-object v17, Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$73;->INSTANCE:Lcom/deepalhome/launcher/settings/ActionPickerCatalog$rootOptionSpecs$1$73;

    new-instance v18, Landroidx/activity/OnBackPressedDispatcher$addCallback$1;

    const-string v13, "isSupported()Z"

    const/4 v14, 0x0

    const/4 v9, 0x0

    const-class v11, Lcom/deepalhome/launcher/event/BodyControlType;

    const-string v12, "isSupported"

    const/4 v15, 0x7

    move-object/from16 v8, v18

    move-object/from16 v10, v16

    invoke-direct/range {v8 .. v15}, Landroidx/activity/OnBackPressedDispatcher$addCallback$1;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v15, 0x0

    const/16 v8, 0x1a0

    const/16 v19, 0x0

    move-object v9, v3

    move-object v10, v4

    move v11, v6

    move-object/from16 v12, v17

    move v13, v2

    move-object/from16 v14, v18

    move-object/from16 v17, v19

    move/from16 v18, v8

    invoke-direct/range {v9 .. v18}, Lcom/deepalhome/launcher/settings/RootActionOptionSpec;-><init>(Ljava/lang/String;ILkotlin/jvm/functions/Function1;ILkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lcom/deepalhome/launcher/event/BodyControlType;Lcom/deepalhome/launcher/settings/ActionPickerSubmenu;I)V

    invoke-virtual {v5, v3}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Lkotlin/collections/builders/ListBuilder;->build()Lkotlin/collections/builders/ListBuilder;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->asSequence(Ljava/lang/Iterable;)Lkotlin/io/LinesSequence;

    move-result-object v2

    new-instance v3, Lcom/deepalhome/launcher/settings/ActionPickerCatalog$getRootOptions$options$1;

    invoke-direct {v3, v1}, Lcom/deepalhome/launcher/settings/ActionPickerCatalog$getRootOptions$options$1;-><init>(Lcom/deepalhome/launcher/settings/ActionPickerSurface;)V

    invoke-static {v2, v3}, Lkotlin/sequences/SequencesKt___SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FilteringSequence;

    move-result-object v2

    new-instance v3, Lcom/deepalhome/launcher/settings/ActionPickerCatalog$getRootOptions$options$2;

    invoke-direct {v3, v0}, Lcom/deepalhome/launcher/settings/ActionPickerCatalog$getRootOptions$options$2;-><init>(Landroid/content/Context;)V

    invoke-static {v2, v3}, Lkotlin/sequences/SequencesKt___SequencesKt;->map(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/DistinctSequence;

    move-result-object v0

    invoke-static {v0}, Lkotlin/sequences/SequencesKt___SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    move-result-object v0

    if-eq v1, v7, :cond_5

    goto :goto_8

    :cond_5
    const-string v1, "deepal_plus_control"

    const-string v2, "ble_cycle"

    const-string v3, "triggerless_task"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/deepalhome/launcher/settings/ActionPickerOption;

    iget-object v7, v7, Lcom/deepalhome/launcher/settings/ActionPickerOption;->key:Ljava/lang/String;

    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    goto :goto_6

    :cond_8
    const/4 v6, 0x0

    :goto_6
    check-cast v6, Lcom/deepalhome/launcher/settings/ActionPickerOption;

    if-eqz v6, :cond_6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_9
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/deepalhome/launcher/settings/ActionPickerOption;

    iget-object v5, v5, Lcom/deepalhome/launcher/settings/ActionPickerOption;->key:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_b
    invoke-static {v2, v3}, Lkotlin/collections/CollectionsKt___CollectionsKt;->plus(Ljava/util/List;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    :goto_8
    return-object v0
.end method


# virtual methods
.method public final getSubmenuOptions(Lcom/deepalhome/launcher/settings/ActionPickerSubmenu;)Ljava/util/List;
    .locals 40

    move-object/from16 v0, p0

    const-string v1, "submenu"

    move-object/from16 v2, p1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const v8, 0x7f080159

    const-string v9, "Off"

    const-string v10, "On"

    const v11, 0x7f0800d8

    const/4 v12, 0x0

    const v13, 0x7f0800e1

    const/4 v14, 0x0

    packed-switch v1, :pswitch_data_0

    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    :pswitch_0
    sget-object v0, Lcom/deepalhome/launcher/event/MenuType;->$ENTRIES:Lkotlin/enums/EnumEntriesList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v2, Lkotlin/jvm/internal/ArrayIterator;

    const/4 v3, 0x2

    invoke-direct {v2, v3, v0}, Lkotlin/jvm/internal/ArrayIterator;-><init>(ILjava/lang/Object;)V

    :goto_0
    invoke-virtual {v2}, Lkotlin/jvm/internal/ArrayIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Lkotlin/jvm/internal/ArrayIterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/deepalhome/launcher/event/MenuType;

    new-instance v0, Lcom/deepalhome/launcher/settings/ActionPickerOption;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ble_cycle_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Lcom/deepalhome/launcher/event/MenuType;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9}, Lcom/deepalhome/launcher/event/MenuType;->getIconRes()I

    move-result v5

    invoke-virtual {v9}, Lcom/deepalhome/launcher/event/MenuType;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/16 v12, 0xd8

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v3, v0

    invoke-direct/range {v3 .. v12}, Lcom/deepalhome/launcher/settings/ActionPickerOption;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/deepalhome/launcher/task/model/TaskAction;Lcom/deepalhome/launcher/event/BodyControlType;Lcom/deepalhome/launcher/event/MenuType;Lcom/deepalhome/launcher/settings/ActionPickerSubmenu;ZI)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_1
    new-instance v1, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;

    new-instance v2, Lcom/deepalhome/launcher/hvac/HvacCommand$SetSeatHeating;

    sget-object v6, Lcom/deepalhome/launcher/hvac/HvacCommand$Position;->FRONT_LEFT:Lcom/deepalhome/launcher/hvac/HvacCommand$Position;

    invoke-direct {v2, v4, v6, v5}, Lcom/deepalhome/launcher/hvac/HvacCommand$SetSeatHeating;-><init>(ZLcom/deepalhome/launcher/hvac/HvacCommand$Position;Ljava/lang/Integer;)V

    invoke-direct {v1, v2}, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;-><init>(Lcom/deepalhome/launcher/hvac/HvacCommand;)V

    const-string v2, "seat_heating_1"

    const v5, 0x7f08010f

    const-string v8, "Heating level 1"

    invoke-static {v0, v2, v5, v8, v1}, Lcom/deepalhome/launcher/settings/ActionPickerCatalog;->actionOption$default(Lcom/deepalhome/launcher/settings/ActionPickerCatalog;Ljava/lang/String;ILjava/lang/String;Lcom/deepalhome/launcher/task/model/TaskAction;)Lcom/deepalhome/launcher/settings/ActionPickerOption;

    move-result-object v1

    new-instance v2, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;

    new-instance v5, Lcom/deepalhome/launcher/hvac/HvacCommand$SetSeatHeating;

    invoke-direct {v5, v4, v6, v7}, Lcom/deepalhome/launcher/hvac/HvacCommand$SetSeatHeating;-><init>(ZLcom/deepalhome/launcher/hvac/HvacCommand$Position;Ljava/lang/Integer;)V

    invoke-direct {v2, v5}, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;-><init>(Lcom/deepalhome/launcher/hvac/HvacCommand;)V

    const-string v5, "seat_heating_2"

    const v7, 0x7f080111

    const-string v8, "Heating level 2"

    invoke-static {v0, v5, v7, v8, v2}, Lcom/deepalhome/launcher/settings/ActionPickerCatalog;->actionOption$default(Lcom/deepalhome/launcher/settings/ActionPickerCatalog;Ljava/lang/String;ILjava/lang/String;Lcom/deepalhome/launcher/task/model/TaskAction;)Lcom/deepalhome/launcher/settings/ActionPickerOption;

    move-result-object v2

    new-instance v5, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;

    new-instance v7, Lcom/deepalhome/launcher/hvac/HvacCommand$SetSeatHeating;

    invoke-direct {v7, v4, v6, v3}, Lcom/deepalhome/launcher/hvac/HvacCommand$SetSeatHeating;-><init>(ZLcom/deepalhome/launcher/hvac/HvacCommand$Position;Ljava/lang/Integer;)V

    invoke-direct {v5, v7}, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;-><init>(Lcom/deepalhome/launcher/hvac/HvacCommand;)V

    const-string v3, "seat_heating_3"

    const v4, 0x7f080113

    const-string v6, "Heating level 3"

    invoke-static {v0, v3, v4, v6, v5}, Lcom/deepalhome/launcher/settings/ActionPickerCatalog;->actionOption$default(Lcom/deepalhome/launcher/settings/ActionPickerCatalog;Ljava/lang/String;ILjava/lang/String;Lcom/deepalhome/launcher/task/model/TaskAction;)Lcom/deepalhome/launcher/settings/ActionPickerOption;

    move-result-object v3

    new-instance v4, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;

    new-instance v5, Lcom/deepalhome/launcher/hvac/HvacCommand$SetSeatHeating;

    invoke-direct {v5}, Lcom/deepalhome/launcher/hvac/HvacCommand$SetSeatHeating;-><init>()V

    invoke-direct {v4, v5}, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;-><init>(Lcom/deepalhome/launcher/hvac/HvacCommand;)V

    const-string v5, "seat_heating_off"

    const v6, 0x7f080115

    const-string v7, "Turn off heating"

    invoke-static {v0, v5, v6, v7, v4}, Lcom/deepalhome/launcher/settings/ActionPickerCatalog;->actionOption$default(Lcom/deepalhome/launcher/settings/ActionPickerCatalog;Ljava/lang/String;ILjava/lang/String;Lcom/deepalhome/launcher/task/model/TaskAction;)Lcom/deepalhome/launcher/settings/ActionPickerOption;

    move-result-object v0

    filled-new-array {v1, v2, v3, v0}, [Lcom/deepalhome/launcher/settings/ActionPickerOption;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto/16 :goto_2

    :pswitch_2
    new-instance v1, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;

    new-instance v2, Lcom/deepalhome/launcher/hvac/HvacCommand$SetSeatVentilation;

    sget-object v6, Lcom/deepalhome/launcher/hvac/HvacCommand$Position;->FRONT_LEFT:Lcom/deepalhome/launcher/hvac/HvacCommand$Position;

    invoke-direct {v2, v4, v6, v5}, Lcom/deepalhome/launcher/hvac/HvacCommand$SetSeatVentilation;-><init>(ZLcom/deepalhome/launcher/hvac/HvacCommand$Position;Ljava/lang/Integer;)V

    invoke-direct {v1, v2}, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;-><init>(Lcom/deepalhome/launcher/hvac/HvacCommand;)V

    const-string v2, "seat_ventilation_1"

    const v5, 0x7f08011d

    const-string v8, "Ventilation level 1"

    invoke-static {v0, v2, v5, v8, v1}, Lcom/deepalhome/launcher/settings/ActionPickerCatalog;->actionOption$default(Lcom/deepalhome/launcher/settings/ActionPickerCatalog;Ljava/lang/String;ILjava/lang/String;Lcom/deepalhome/launcher/task/model/TaskAction;)Lcom/deepalhome/launcher/settings/ActionPickerOption;

    move-result-object v1

    new-instance v2, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;

    new-instance v5, Lcom/deepalhome/launcher/hvac/HvacCommand$SetSeatVentilation;

    invoke-direct {v5, v4, v6, v7}, Lcom/deepalhome/launcher/hvac/HvacCommand$SetSeatVentilation;-><init>(ZLcom/deepalhome/launcher/hvac/HvacCommand$Position;Ljava/lang/Integer;)V

    invoke-direct {v2, v5}, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;-><init>(Lcom/deepalhome/launcher/hvac/HvacCommand;)V

    const-string v5, "seat_ventilation_2"

    const v7, 0x7f08011f

    const-string v8, "Ventilation level 2"

    invoke-static {v0, v5, v7, v8, v2}, Lcom/deepalhome/launcher/settings/ActionPickerCatalog;->actionOption$default(Lcom/deepalhome/launcher/settings/ActionPickerCatalog;Ljava/lang/String;ILjava/lang/String;Lcom/deepalhome/launcher/task/model/TaskAction;)Lcom/deepalhome/launcher/settings/ActionPickerOption;

    move-result-object v2

    new-instance v5, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;

    new-instance v7, Lcom/deepalhome/launcher/hvac/HvacCommand$SetSeatVentilation;

    invoke-direct {v7, v4, v6, v3}, Lcom/deepalhome/launcher/hvac/HvacCommand$SetSeatVentilation;-><init>(ZLcom/deepalhome/launcher/hvac/HvacCommand$Position;Ljava/lang/Integer;)V

    invoke-direct {v5, v7}, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;-><init>(Lcom/deepalhome/launcher/hvac/HvacCommand;)V

    const-string v3, "seat_ventilation_3"

    const v4, 0x7f080121

    const-string v7, "Ventilation level 3"

    invoke-static {v0, v3, v4, v7, v5}, Lcom/deepalhome/launcher/settings/ActionPickerCatalog;->actionOption$default(Lcom/deepalhome/launcher/settings/ActionPickerCatalog;Ljava/lang/String;ILjava/lang/String;Lcom/deepalhome/launcher/task/model/TaskAction;)Lcom/deepalhome/launcher/settings/ActionPickerOption;

    move-result-object v3

    new-instance v4, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;

    new-instance v5, Lcom/deepalhome/launcher/hvac/HvacCommand$SetSeatVentilation;

    invoke-direct {v5, v14, v6, v12}, Lcom/deepalhome/launcher/hvac/HvacCommand$SetSeatVentilation;-><init>(ZLcom/deepalhome/launcher/hvac/HvacCommand$Position;Ljava/lang/Integer;)V

    invoke-direct {v4, v5}, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;-><init>(Lcom/deepalhome/launcher/hvac/HvacCommand;)V

    const-string v5, "seat_ventilation_off"

    const v6, 0x7f080123

    const-string v7, "Turn off ventilation"

    invoke-static {v0, v5, v6, v7, v4}, Lcom/deepalhome/launcher/settings/ActionPickerCatalog;->actionOption$default(Lcom/deepalhome/launcher/settings/ActionPickerCatalog;Ljava/lang/String;ILjava/lang/String;Lcom/deepalhome/launcher/task/model/TaskAction;)Lcom/deepalhome/launcher/settings/ActionPickerOption;

    move-result-object v0

    filled-new-array {v1, v2, v3, v0}, [Lcom/deepalhome/launcher/settings/ActionPickerOption;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto/16 :goto_2

    :pswitch_3
    new-instance v1, Lcom/deepalhome/launcher/task/model/TaskAction$SpeakTts;

    const-string v2, "Please pay attention to reversing"

    invoke-direct {v1, v2}, Lcom/deepalhome/launcher/task/model/TaskAction$SpeakTts;-><init>(Ljava/lang/String;)V

    const-string v3, "Single call"

    const-string v4, "speak_tts"

    const v5, 0x7f0800ea

    invoke-static {v0, v4, v5, v3, v1}, Lcom/deepalhome/launcher/settings/ActionPickerCatalog;->actionOption$default(Lcom/deepalhome/launcher/settings/ActionPickerCatalog;Ljava/lang/String;ILjava/lang/String;Lcom/deepalhome/launcher/task/model/TaskAction;)Lcom/deepalhome/launcher/settings/ActionPickerOption;

    move-result-object v1

    new-instance v3, Lcom/deepalhome/launcher/task/model/TaskAction$SpeakLoopTts;

    invoke-direct {v3, v2}, Lcom/deepalhome/launcher/task/model/TaskAction$SpeakLoopTts;-><init>(Ljava/lang/String;)V

    const-string v2, "Loop call"

    const-string v4, "speak_loop_tts"

    invoke-static {v0, v4, v5, v2, v3}, Lcom/deepalhome/launcher/settings/ActionPickerCatalog;->actionOption$default(Lcom/deepalhome/launcher/settings/ActionPickerCatalog;Ljava/lang/String;ILjava/lang/String;Lcom/deepalhome/launcher/task/model/TaskAction;)Lcom/deepalhome/launcher/settings/ActionPickerOption;

    move-result-object v0

    filled-new-array {v1, v0}, [Lcom/deepalhome/launcher/settings/ActionPickerOption;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto/16 :goto_2

    :pswitch_4
    sget-object v1, Lcom/deepalhome/launcher/task/model/TaskAction$LowBeamOn;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskAction$LowBeamOn;

    const-string v2, "low_beam_on"

    const v3, 0x7f08016d

    invoke-static {v0, v2, v3, v10, v1}, Lcom/deepalhome/launcher/settings/ActionPickerCatalog;->actionOption$default(Lcom/deepalhome/launcher/settings/ActionPickerCatalog;Ljava/lang/String;ILjava/lang/String;Lcom/deepalhome/launcher/task/model/TaskAction;)Lcom/deepalhome/launcher/settings/ActionPickerOption;

    move-result-object v1

    sget-object v2, Lcom/deepalhome/launcher/task/model/TaskAction$LowBeamOff;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskAction$LowBeamOff;

    const-string v4, "low_beam_off"

    const v5, 0x7f08016e

    invoke-static {v0, v4, v5, v9, v2}, Lcom/deepalhome/launcher/settings/ActionPickerCatalog;->actionOption$default(Lcom/deepalhome/launcher/settings/ActionPickerCatalog;Ljava/lang/String;ILjava/lang/String;Lcom/deepalhome/launcher/task/model/TaskAction;)Lcom/deepalhome/launcher/settings/ActionPickerOption;

    move-result-object v2

    new-instance v4, Lcom/deepalhome/launcher/task/model/TaskAction$LowBeamStrobe;

    invoke-direct {v4, v6}, Lcom/deepalhome/launcher/task/model/TaskAction$LowBeamStrobe;-><init>(I)V

    const-string v5, "Strobe"

    const-string v6, "low_beam_strobe"

    invoke-static {v0, v6, v3, v5, v4}, Lcom/deepalhome/launcher/settings/ActionPickerCatalog;->actionOption$default(Lcom/deepalhome/launcher/settings/ActionPickerCatalog;Ljava/lang/String;ILjava/lang/String;Lcom/deepalhome/launcher/task/model/TaskAction;)Lcom/deepalhome/launcher/settings/ActionPickerOption;

    move-result-object v0

    filled-new-array {v1, v2, v0}, [Lcom/deepalhome/launcher/settings/ActionPickerOption;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto/16 :goto_2

    :pswitch_5
    sget-object v1, Lcom/deepalhome/launcher/task/model/TaskAction$RearFogLightOn;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskAction$RearFogLightOn;

    const-string v3, "rear_fog_light_on"

    const v4, 0x7f0800cf

    invoke-static {v0, v3, v4, v10, v1}, Lcom/deepalhome/launcher/settings/ActionPickerCatalog;->actionOption$default(Lcom/deepalhome/launcher/settings/ActionPickerCatalog;Ljava/lang/String;ILjava/lang/String;Lcom/deepalhome/launcher/task/model/TaskAction;)Lcom/deepalhome/launcher/settings/ActionPickerOption;

    move-result-object v1

    sget-object v3, Lcom/deepalhome/launcher/task/model/TaskAction$RearFogLightOff;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskAction$RearFogLightOff;

    const-string v5, "rear_fog_light_off"

    invoke-static {v0, v5, v4, v9, v3}, Lcom/deepalhome/launcher/settings/ActionPickerCatalog;->actionOption$default(Lcom/deepalhome/launcher/settings/ActionPickerCatalog;Ljava/lang/String;ILjava/lang/String;Lcom/deepalhome/launcher/task/model/TaskAction;)Lcom/deepalhome/launcher/settings/ActionPickerOption;

    move-result-object v3

    new-instance v5, Lcom/deepalhome/launcher/task/model/TaskAction$RearFogLightStrobe;

    invoke-direct {v5, v2}, Lcom/deepalhome/launcher/task/model/TaskAction$RearFogLightStrobe;-><init>(I)V

    const-string v2, "Flash"

    const-string v6, "rear_fog_light_strobe"

    invoke-static {v0, v6, v4, v2, v5}, Lcom/deepalhome/launcher/settings/ActionPickerCatalog;->actionOption$default(Lcom/deepalhome/launcher/settings/ActionPickerCatalog;Ljava/lang/String;ILjava/lang/String;Lcom/deepalhome/launcher/task/model/TaskAction;)Lcom/deepalhome/launcher/settings/ActionPickerOption;

    move-result-object v0

    filled-new-array {v1, v3, v0}, [Lcom/deepalhome/launcher/settings/ActionPickerOption;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto/16 :goto_2

    :pswitch_6
    new-instance v1, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;

    sget-object v3, Lcom/deepalhome/launcher/hvac/HvacCommand$OpenPanel;->INSTANCE:Lcom/deepalhome/launcher/hvac/HvacCommand$OpenPanel;

    invoke-direct {v1, v3}, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;-><init>(Lcom/deepalhome/launcher/hvac/HvacCommand;)V

    const-string v3, "Open A/C panel"

    const-string v5, "air_condition_open_panel"

    invoke-static {v0, v5, v13, v3, v1}, Lcom/deepalhome/launcher/settings/ActionPickerCatalog;->actionOption$default(Lcom/deepalhome/launcher/settings/ActionPickerCatalog;Ljava/lang/String;ILjava/lang/String;Lcom/deepalhome/launcher/task/model/TaskAction;)Lcom/deepalhome/launcher/settings/ActionPickerOption;

    move-result-object v15

    new-instance v1, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;

    sget-object v3, Lcom/deepalhome/launcher/hvac/HvacCommand$ClosePanel;->INSTANCE:Lcom/deepalhome/launcher/hvac/HvacCommand$ClosePanel;

    invoke-direct {v1, v3}, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;-><init>(Lcom/deepalhome/launcher/hvac/HvacCommand;)V

    const-string v3, "Close A/C panel"

    const-string v5, "air_condition_close_panel"

    invoke-static {v0, v5, v13, v3, v1}, Lcom/deepalhome/launcher/settings/ActionPickerCatalog;->actionOption$default(Lcom/deepalhome/launcher/settings/ActionPickerCatalog;Ljava/lang/String;ILjava/lang/String;Lcom/deepalhome/launcher/task/model/TaskAction;)Lcom/deepalhome/launcher/settings/ActionPickerOption;

    move-result-object v16

    new-instance v1, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;

    new-instance v3, Lcom/deepalhome/launcher/hvac/HvacCommand$SetPower;

    invoke-direct {v3, v4}, Lcom/deepalhome/launcher/hvac/HvacCommand$SetPower;-><init>(Z)V

    invoke-direct {v1, v3}, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;-><init>(Lcom/deepalhome/launcher/hvac/HvacCommand;)V

    const-string v3, "Turn on A/C"

    const-string v5, "air_condition_open"

    invoke-static {v0, v5, v13, v3, v1}, Lcom/deepalhome/launcher/settings/ActionPickerCatalog;->actionOption$default(Lcom/deepalhome/launcher/settings/ActionPickerCatalog;Ljava/lang/String;ILjava/lang/String;Lcom/deepalhome/launcher/task/model/TaskAction;)Lcom/deepalhome/launcher/settings/ActionPickerOption;

    move-result-object v17

    new-instance v1, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;

    new-instance v3, Lcom/deepalhome/launcher/hvac/HvacCommand$SetPower;

    invoke-direct {v3, v14}, Lcom/deepalhome/launcher/hvac/HvacCommand$SetPower;-><init>(Z)V

    invoke-direct {v1, v3}, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;-><init>(Lcom/deepalhome/launcher/hvac/HvacCommand;)V

    const-string v3, "Turn off A/C"

    const-string v5, "air_condition_close"

    invoke-static {v0, v5, v13, v3, v1}, Lcom/deepalhome/launcher/settings/ActionPickerCatalog;->actionOption$default(Lcom/deepalhome/launcher/settings/ActionPickerCatalog;Ljava/lang/String;ILjava/lang/String;Lcom/deepalhome/launcher/task/model/TaskAction;)Lcom/deepalhome/launcher/settings/ActionPickerOption;

    move-result-object v18

    new-instance v1, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;

    new-instance v3, Lcom/deepalhome/launcher/hvac/HvacCommand$SetTemperature;

    sget-object v5, Lcom/deepalhome/launcher/hvac/HvacCommand$Position;->FRONT_ROW:Lcom/deepalhome/launcher/hvac/HvacCommand$Position;

    const/high16 v6, 0x41c80000    # 25.0f

    invoke-direct {v3, v6, v5}, Lcom/deepalhome/launcher/hvac/HvacCommand$SetTemperature;-><init>(FLcom/deepalhome/launcher/hvac/HvacCommand$Position;)V

    invoke-direct {v1, v3}, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;-><init>(Lcom/deepalhome/launcher/hvac/HvacCommand;)V

    const-string v3, "air_condition_temperature"

    const-string v5, "Set temperature"

    invoke-static {v0, v3, v11, v5, v1}, Lcom/deepalhome/launcher/settings/ActionPickerCatalog;->actionOption$default(Lcom/deepalhome/launcher/settings/ActionPickerCatalog;Ljava/lang/String;ILjava/lang/String;Lcom/deepalhome/launcher/task/model/TaskAction;)Lcom/deepalhome/launcher/settings/ActionPickerOption;

    move-result-object v19

    new-instance v1, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;

    new-instance v3, Lcom/deepalhome/launcher/hvac/HvacCommand$AdjustTemperature;

    invoke-direct {v3, v4}, Lcom/deepalhome/launcher/hvac/HvacCommand$AdjustTemperature;-><init>(I)V

    invoke-direct {v1, v3}, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;-><init>(Lcom/deepalhome/launcher/hvac/HvacCommand;)V

    const-string v3, "air_condition_temperature_up"

    const-string v5, "Increase temperature"

    invoke-static {v0, v3, v11, v5, v1}, Lcom/deepalhome/launcher/settings/ActionPickerCatalog;->actionOption$default(Lcom/deepalhome/launcher/settings/ActionPickerCatalog;Ljava/lang/String;ILjava/lang/String;Lcom/deepalhome/launcher/task/model/TaskAction;)Lcom/deepalhome/launcher/settings/ActionPickerOption;

    move-result-object v20

    new-instance v1, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;

    new-instance v3, Lcom/deepalhome/launcher/hvac/HvacCommand$SetFanSpeed;

    invoke-direct {v3, v2}, Lcom/deepalhome/launcher/hvac/HvacCommand$SetFanSpeed;-><init>(I)V

    invoke-direct {v1, v3}, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;-><init>(Lcom/deepalhome/launcher/hvac/HvacCommand;)V

    const-string v2, "air_condition_fan_speed"

    const-string v3, "Set fan speed"

    const v5, 0x7f080272

    invoke-static {v0, v2, v5, v3, v1}, Lcom/deepalhome/launcher/settings/ActionPickerCatalog;->actionOption$default(Lcom/deepalhome/launcher/settings/ActionPickerCatalog;Ljava/lang/String;ILjava/lang/String;Lcom/deepalhome/launcher/task/model/TaskAction;)Lcom/deepalhome/launcher/settings/ActionPickerOption;

    move-result-object v21

    new-instance v1, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;

    sget-object v2, Lcom/deepalhome/launcher/hvac/HvacCommand$SetMaxFanSpeed;->INSTANCE:Lcom/deepalhome/launcher/hvac/HvacCommand$SetMaxFanSpeed;

    invoke-direct {v1, v2}, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;-><init>(Lcom/deepalhome/launcher/hvac/HvacCommand;)V

    const-string v2, "air_condition_max_fan_speed"

    const-string v3, "Maximum fan speed"

    invoke-static {v0, v2, v5, v3, v1}, Lcom/deepalhome/launcher/settings/ActionPickerCatalog;->actionOption$default(Lcom/deepalhome/launcher/settings/ActionPickerCatalog;Ljava/lang/String;ILjava/lang/String;Lcom/deepalhome/launcher/task/model/TaskAction;)Lcom/deepalhome/launcher/settings/ActionPickerOption;

    move-result-object v22

    new-instance v1, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;

    new-instance v2, Lcom/deepalhome/launcher/hvac/HvacCommand$AdjustFanSpeed;

    invoke-direct {v2, v4}, Lcom/deepalhome/launcher/hvac/HvacCommand$AdjustFanSpeed;-><init>(I)V

    invoke-direct {v1, v2}, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;-><init>(Lcom/deepalhome/launcher/hvac/HvacCommand;)V

    const-string v2, "air_condition_fan_speed_up"

    const-string v3, "Increase fan speed"

    invoke-static {v0, v2, v5, v3, v1}, Lcom/deepalhome/launcher/settings/ActionPickerCatalog;->actionOption$default(Lcom/deepalhome/launcher/settings/ActionPickerCatalog;Ljava/lang/String;ILjava/lang/String;Lcom/deepalhome/launcher/task/model/TaskAction;)Lcom/deepalhome/launcher/settings/ActionPickerOption;

    move-result-object v23

    new-instance v1, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;

    new-instance v2, Lcom/deepalhome/launcher/hvac/HvacCommand$SetMode;

    sget-object v3, Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;->COOLING:Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;

    invoke-direct {v2, v3}, Lcom/deepalhome/launcher/hvac/HvacCommand$SetMode;-><init>(Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;)V

    invoke-direct {v1, v2}, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;-><init>(Lcom/deepalhome/launcher/hvac/HvacCommand;)V

    const-string v2, "air_condition_mode_cooling"

    const-string v3, "Cooling mode"

    invoke-static {v0, v2, v13, v3, v1}, Lcom/deepalhome/launcher/settings/ActionPickerCatalog;->actionOption$default(Lcom/deepalhome/launcher/settings/ActionPickerCatalog;Ljava/lang/String;ILjava/lang/String;Lcom/deepalhome/launcher/task/model/TaskAction;)Lcom/deepalhome/launcher/settings/ActionPickerOption;

    move-result-object v24

    new-instance v1, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;

    new-instance v2, Lcom/deepalhome/launcher/hvac/HvacCommand$SetMode;

    sget-object v3, Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;->HEATING:Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;

    invoke-direct {v2, v3}, Lcom/deepalhome/launcher/hvac/HvacCommand$SetMode;-><init>(Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;)V

    invoke-direct {v1, v2}, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;-><init>(Lcom/deepalhome/launcher/hvac/HvacCommand;)V

    const-string v2, "air_condition_mode_heating"

    const-string v3, "Heating mode"

    invoke-static {v0, v2, v13, v3, v1}, Lcom/deepalhome/launcher/settings/ActionPickerCatalog;->actionOption$default(Lcom/deepalhome/launcher/settings/ActionPickerCatalog;Ljava/lang/String;ILjava/lang/String;Lcom/deepalhome/launcher/task/model/TaskAction;)Lcom/deepalhome/launcher/settings/ActionPickerOption;

    move-result-object v25

    new-instance v1, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;

    new-instance v2, Lcom/deepalhome/launcher/hvac/HvacCommand$SetMode;

    sget-object v3, Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;->AUTO:Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;

    invoke-direct {v2, v3}, Lcom/deepalhome/launcher/hvac/HvacCommand$SetMode;-><init>(Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;)V

    invoke-direct {v1, v2}, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;-><init>(Lcom/deepalhome/launcher/hvac/HvacCommand;)V

    const-string v2, "air_condition_mode_auto"

    const-string v3, "Auto mode"

    invoke-static {v0, v2, v13, v3, v1}, Lcom/deepalhome/launcher/settings/ActionPickerCatalog;->actionOption$default(Lcom/deepalhome/launcher/settings/ActionPickerCatalog;Ljava/lang/String;ILjava/lang/String;Lcom/deepalhome/launcher/task/model/TaskAction;)Lcom/deepalhome/launcher/settings/ActionPickerOption;

    move-result-object v26

    new-instance v1, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;

    new-instance v2, Lcom/deepalhome/launcher/hvac/HvacCommand$SetMode;

    sget-object v3, Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;->VENTILATION:Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;

    invoke-direct {v2, v3}, Lcom/deepalhome/launcher/hvac/HvacCommand$SetMode;-><init>(Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;)V

    invoke-direct {v1, v2}, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;-><init>(Lcom/deepalhome/launcher/hvac/HvacCommand;)V

    const-string v2, "air_condition_mode_ventilation"

    const-string v3, "Ventilation mode"

    invoke-static {v0, v2, v13, v3, v1}, Lcom/deepalhome/launcher/settings/ActionPickerCatalog;->actionOption$default(Lcom/deepalhome/launcher/settings/ActionPickerCatalog;Ljava/lang/String;ILjava/lang/String;Lcom/deepalhome/launcher/task/model/TaskAction;)Lcom/deepalhome/launcher/settings/ActionPickerOption;

    move-result-object v27

    new-instance v1, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;

    new-instance v2, Lcom/deepalhome/launcher/hvac/HvacCommand$SetSeatVentilation;

    sget-object v3, Lcom/deepalhome/launcher/hvac/HvacCommand$Position;->FRONT_LEFT:Lcom/deepalhome/launcher/hvac/HvacCommand$Position;

    invoke-direct {v2, v4, v3, v12}, Lcom/deepalhome/launcher/hvac/HvacCommand$SetSeatVentilation;-><init>(ZLcom/deepalhome/launcher/hvac/HvacCommand$Position;Ljava/lang/Integer;)V

    invoke-direct {v1, v2}, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;-><init>(Lcom/deepalhome/launcher/hvac/HvacCommand;)V

    const-string v2, "air_condition_front_left_vent_on"

    const-string v5, "Turn on driver seat ventilation"

    invoke-static {v0, v2, v13, v5, v1}, Lcom/deepalhome/launcher/settings/ActionPickerCatalog;->actionOption$default(Lcom/deepalhome/launcher/settings/ActionPickerCatalog;Ljava/lang/String;ILjava/lang/String;Lcom/deepalhome/launcher/task/model/TaskAction;)Lcom/deepalhome/launcher/settings/ActionPickerOption;

    move-result-object v28

    new-instance v1, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;

    new-instance v2, Lcom/deepalhome/launcher/hvac/HvacCommand$SetSeatVentilation;

    invoke-direct {v2, v14, v3, v12}, Lcom/deepalhome/launcher/hvac/HvacCommand$SetSeatVentilation;-><init>(ZLcom/deepalhome/launcher/hvac/HvacCommand$Position;Ljava/lang/Integer;)V

    invoke-direct {v1, v2}, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;-><init>(Lcom/deepalhome/launcher/hvac/HvacCommand;)V

    const-string v2, "air_condition_front_left_vent_off"

    const-string v3, "Turn off driver seat ventilation"

    invoke-static {v0, v2, v13, v3, v1}, Lcom/deepalhome/launcher/settings/ActionPickerCatalog;->actionOption$default(Lcom/deepalhome/launcher/settings/ActionPickerCatalog;Ljava/lang/String;ILjava/lang/String;Lcom/deepalhome/launcher/task/model/TaskAction;)Lcom/deepalhome/launcher/settings/ActionPickerOption;

    move-result-object v29

    new-instance v1, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;

    new-instance v2, Lcom/deepalhome/launcher/hvac/HvacCommand$SetSeatVentilation;

    sget-object v3, Lcom/deepalhome/launcher/hvac/HvacCommand$Position;->FRONT_RIGHT:Lcom/deepalhome/launcher/hvac/HvacCommand$Position;

    invoke-direct {v2, v4, v3, v12}, Lcom/deepalhome/launcher/hvac/HvacCommand$SetSeatVentilation;-><init>(ZLcom/deepalhome/launcher/hvac/HvacCommand$Position;Ljava/lang/Integer;)V

    invoke-direct {v1, v2}, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;-><init>(Lcom/deepalhome/launcher/hvac/HvacCommand;)V

    const-string v2, "air_condition_front_right_vent_on"

    const-string v4, "Turn on passenger seat ventilation"

    invoke-static {v0, v2, v13, v4, v1}, Lcom/deepalhome/launcher/settings/ActionPickerCatalog;->actionOption$default(Lcom/deepalhome/launcher/settings/ActionPickerCatalog;Ljava/lang/String;ILjava/lang/String;Lcom/deepalhome/launcher/task/model/TaskAction;)Lcom/deepalhome/launcher/settings/ActionPickerOption;

    move-result-object v30

    new-instance v1, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;

    new-instance v2, Lcom/deepalhome/launcher/hvac/HvacCommand$SetSeatVentilation;

    invoke-direct {v2, v14, v3, v12}, Lcom/deepalhome/launcher/hvac/HvacCommand$SetSeatVentilation;-><init>(ZLcom/deepalhome/launcher/hvac/HvacCommand$Position;Ljava/lang/Integer;)V

    invoke-direct {v1, v2}, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;-><init>(Lcom/deepalhome/launcher/hvac/HvacCommand;)V

    const-string v2, "air_condition_front_right_vent_off"

    const-string v3, "Turn off passenger seat ventilation"

    invoke-static {v0, v2, v13, v3, v1}, Lcom/deepalhome/launcher/settings/ActionPickerCatalog;->actionOption$default(Lcom/deepalhome/launcher/settings/ActionPickerCatalog;Ljava/lang/String;ILjava/lang/String;Lcom/deepalhome/launcher/task/model/TaskAction;)Lcom/deepalhome/launcher/settings/ActionPickerOption;

    move-result-object v31

    new-instance v1, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;

    new-instance v2, Lcom/deepalhome/launcher/hvac/HvacCommand$SetMode;

    sget-object v3, Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;->DEFROST_FRONT:Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;

    invoke-direct {v2, v3}, Lcom/deepalhome/launcher/hvac/HvacCommand$SetMode;-><init>(Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;)V

    invoke-direct {v1, v2}, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;-><init>(Lcom/deepalhome/launcher/hvac/HvacCommand;)V

    const-string v2, "air_condition_defrost_front"

    const-string v3, "Front defrost"

    invoke-static {v0, v2, v13, v3, v1}, Lcom/deepalhome/launcher/settings/ActionPickerCatalog;->actionOption$default(Lcom/deepalhome/launcher/settings/ActionPickerCatalog;Ljava/lang/String;ILjava/lang/String;Lcom/deepalhome/launcher/task/model/TaskAction;)Lcom/deepalhome/launcher/settings/ActionPickerOption;

    move-result-object v32

    new-instance v1, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;

    new-instance v2, Lcom/deepalhome/launcher/hvac/HvacCommand$SetMode;

    sget-object v3, Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;->DEFROST_REAR:Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;

    invoke-direct {v2, v3}, Lcom/deepalhome/launcher/hvac/HvacCommand$SetMode;-><init>(Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;)V

    invoke-direct {v1, v2}, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;-><init>(Lcom/deepalhome/launcher/hvac/HvacCommand;)V

    const-string v2, "air_condition_defrost_rear"

    const-string v3, "Rear defog"

    invoke-static {v0, v2, v13, v3, v1}, Lcom/deepalhome/launcher/settings/ActionPickerCatalog;->actionOption$default(Lcom/deepalhome/launcher/settings/ActionPickerCatalog;Ljava/lang/String;ILjava/lang/String;Lcom/deepalhome/launcher/task/model/TaskAction;)Lcom/deepalhome/launcher/settings/ActionPickerOption;

    move-result-object v33

    new-instance v1, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;

    new-instance v2, Lcom/deepalhome/launcher/hvac/HvacCommand$SetMode;

    sget-object v3, Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;->INNER_LOOP:Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;

    invoke-direct {v2, v3}, Lcom/deepalhome/launcher/hvac/HvacCommand$SetMode;-><init>(Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;)V

    invoke-direct {v1, v2}, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;-><init>(Lcom/deepalhome/launcher/hvac/HvacCommand;)V

    const-string v2, "air_condition_inner_loop"

    const-string v3, "Recirculation"

    invoke-static {v0, v2, v13, v3, v1}, Lcom/deepalhome/launcher/settings/ActionPickerCatalog;->actionOption$default(Lcom/deepalhome/launcher/settings/ActionPickerCatalog;Ljava/lang/String;ILjava/lang/String;Lcom/deepalhome/launcher/task/model/TaskAction;)Lcom/deepalhome/launcher/settings/ActionPickerOption;

    move-result-object v34

    new-instance v1, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;

    new-instance v2, Lcom/deepalhome/launcher/hvac/HvacCommand$SetMode;

    sget-object v3, Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;->OUTER_LOOP:Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;

    invoke-direct {v2, v3}, Lcom/deepalhome/launcher/hvac/HvacCommand$SetMode;-><init>(Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;)V

    invoke-direct {v1, v2}, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;-><init>(Lcom/deepalhome/launcher/hvac/HvacCommand;)V

    const-string v2, "air_condition_outer_loop"

    const-string v3, "Outside air"

    invoke-static {v0, v2, v13, v3, v1}, Lcom/deepalhome/launcher/settings/ActionPickerCatalog;->actionOption$default(Lcom/deepalhome/launcher/settings/ActionPickerCatalog;Ljava/lang/String;ILjava/lang/String;Lcom/deepalhome/launcher/task/model/TaskAction;)Lcom/deepalhome/launcher/settings/ActionPickerOption;

    move-result-object v35

    new-instance v1, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;

    new-instance v2, Lcom/deepalhome/launcher/hvac/HvacCommand$SetMode;

    sget-object v3, Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;->WIND_HEAD:Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;

    invoke-direct {v2, v3}, Lcom/deepalhome/launcher/hvac/HvacCommand$SetMode;-><init>(Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;)V

    invoke-direct {v1, v2}, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;-><init>(Lcom/deepalhome/launcher/hvac/HvacCommand;)V

    const-string v2, "air_condition_wind_head"

    const-string v3, "Face"

    invoke-static {v0, v2, v13, v3, v1}, Lcom/deepalhome/launcher/settings/ActionPickerCatalog;->actionOption$default(Lcom/deepalhome/launcher/settings/ActionPickerCatalog;Ljava/lang/String;ILjava/lang/String;Lcom/deepalhome/launcher/task/model/TaskAction;)Lcom/deepalhome/launcher/settings/ActionPickerOption;

    move-result-object v36

    new-instance v1, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;

    new-instance v2, Lcom/deepalhome/launcher/hvac/HvacCommand$SetMode;

    sget-object v3, Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;->WIND_HEAD_LEG:Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;

    invoke-direct {v2, v3}, Lcom/deepalhome/launcher/hvac/HvacCommand$SetMode;-><init>(Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;)V

    invoke-direct {v1, v2}, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;-><init>(Lcom/deepalhome/launcher/hvac/HvacCommand;)V

    const-string v2, "air_condition_wind_head_leg"

    const-string v3, "Face and feet"

    invoke-static {v0, v2, v13, v3, v1}, Lcom/deepalhome/launcher/settings/ActionPickerCatalog;->actionOption$default(Lcom/deepalhome/launcher/settings/ActionPickerCatalog;Ljava/lang/String;ILjava/lang/String;Lcom/deepalhome/launcher/task/model/TaskAction;)Lcom/deepalhome/launcher/settings/ActionPickerOption;

    move-result-object v37

    new-instance v1, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;

    new-instance v2, Lcom/deepalhome/launcher/hvac/HvacCommand$SetMode;

    sget-object v3, Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;->WIND_LEG:Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;

    invoke-direct {v2, v3}, Lcom/deepalhome/launcher/hvac/HvacCommand$SetMode;-><init>(Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;)V

    invoke-direct {v1, v2}, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;-><init>(Lcom/deepalhome/launcher/hvac/HvacCommand;)V

    const-string v2, "air_condition_wind_leg"

    const-string v3, "Feet"

    invoke-static {v0, v2, v13, v3, v1}, Lcom/deepalhome/launcher/settings/ActionPickerCatalog;->actionOption$default(Lcom/deepalhome/launcher/settings/ActionPickerCatalog;Ljava/lang/String;ILjava/lang/String;Lcom/deepalhome/launcher/task/model/TaskAction;)Lcom/deepalhome/launcher/settings/ActionPickerOption;

    move-result-object v38

    new-instance v1, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;

    new-instance v2, Lcom/deepalhome/launcher/hvac/HvacCommand$SetMode;

    sget-object v3, Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;->SYNC:Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;

    invoke-direct {v2, v3}, Lcom/deepalhome/launcher/hvac/HvacCommand$SetMode;-><init>(Lcom/deepalhome/launcher/hvac/HvacCommand$Mode;)V

    invoke-direct {v1, v2}, Lcom/deepalhome/launcher/task/model/TaskAction$ControlAirCondition;-><init>(Lcom/deepalhome/launcher/hvac/HvacCommand;)V

    const-string v2, "air_condition_sync"

    const-string v3, "Sync mode"

    invoke-static {v0, v2, v13, v3, v1}, Lcom/deepalhome/launcher/settings/ActionPickerCatalog;->actionOption$default(Lcom/deepalhome/launcher/settings/ActionPickerCatalog;Ljava/lang/String;ILjava/lang/String;Lcom/deepalhome/launcher/task/model/TaskAction;)Lcom/deepalhome/launcher/settings/ActionPickerOption;

    move-result-object v39

    filled-new-array/range {v15 .. v39}, [Lcom/deepalhome/launcher/settings/ActionPickerOption;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto/16 :goto_2

    :pswitch_7
    sget-object v1, Lcom/deepalhome/launcher/task/model/TaskAction$HeatedCockpitNormal;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskAction$HeatedCockpitNormal;

    invoke-virtual {v1}, Lcom/deepalhome/launcher/task/model/TaskAction;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "scene_normal"

    invoke-static {v0, v3, v13, v2, v1}, Lcom/deepalhome/launcher/settings/ActionPickerCatalog;->actionOption$default(Lcom/deepalhome/launcher/settings/ActionPickerCatalog;Ljava/lang/String;ILjava/lang/String;Lcom/deepalhome/launcher/task/model/TaskAction;)Lcom/deepalhome/launcher/settings/ActionPickerOption;

    move-result-object v1

    sget-object v2, Lcom/deepalhome/launcher/task/model/TaskAction$HeatedCockpitLowPower;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskAction$HeatedCockpitLowPower;

    invoke-virtual {v2}, Lcom/deepalhome/launcher/task/model/TaskAction;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "scene_low_power"

    invoke-static {v0, v4, v13, v3, v2}, Lcom/deepalhome/launcher/settings/ActionPickerCatalog;->actionOption$default(Lcom/deepalhome/launcher/settings/ActionPickerCatalog;Ljava/lang/String;ILjava/lang/String;Lcom/deepalhome/launcher/task/model/TaskAction;)Lcom/deepalhome/launcher/settings/ActionPickerOption;

    move-result-object v2

    sget-object v3, Lcom/deepalhome/launcher/task/model/TaskAction$HeatedCockpitClose;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskAction$HeatedCockpitClose;

    invoke-virtual {v3}, Lcom/deepalhome/launcher/task/model/TaskAction;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "scene_close"

    invoke-static {v0, v5, v13, v4, v3}, Lcom/deepalhome/launcher/settings/ActionPickerCatalog;->actionOption$default(Lcom/deepalhome/launcher/settings/ActionPickerCatalog;Ljava/lang/String;ILjava/lang/String;Lcom/deepalhome/launcher/task/model/TaskAction;)Lcom/deepalhome/launcher/settings/ActionPickerOption;

    move-result-object v0

    filled-new-array {v1, v2, v0}, [Lcom/deepalhome/launcher/settings/ActionPickerOption;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto/16 :goto_2

    :pswitch_8
    new-instance v1, Lcom/deepalhome/launcher/task/model/TaskAction$SetScreenBrightness;

    const/16 v2, 0x32

    invoke-direct {v1, v2}, Lcom/deepalhome/launcher/task/model/TaskAction$SetScreenBrightness;-><init>(I)V

    const-string v2, "screen_brightness_value"

    const v3, 0x7f0800e4

    const-string v4, "Specified brightness"

    invoke-static {v0, v2, v3, v4, v1}, Lcom/deepalhome/launcher/settings/ActionPickerCatalog;->actionOption$default(Lcom/deepalhome/launcher/settings/ActionPickerCatalog;Ljava/lang/String;ILjava/lang/String;Lcom/deepalhome/launcher/task/model/TaskAction;)Lcom/deepalhome/launcher/settings/ActionPickerOption;

    move-result-object v1

    sget-object v2, Lcom/deepalhome/launcher/task/model/TaskAction$ToggleAutoScreenBrightness;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskAction$ToggleAutoScreenBrightness;

    invoke-virtual {v2}, Lcom/deepalhome/launcher/task/model/TaskAction;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0800e3

    const-string v5, "screen_brightness_auto_toggle"

    invoke-static {v0, v5, v4, v3, v2}, Lcom/deepalhome/launcher/settings/ActionPickerCatalog;->actionOption$default(Lcom/deepalhome/launcher/settings/ActionPickerCatalog;Ljava/lang/String;ILjava/lang/String;Lcom/deepalhome/launcher/task/model/TaskAction;)Lcom/deepalhome/launcher/settings/ActionPickerOption;

    move-result-object v0

    filled-new-array {v1, v0}, [Lcom/deepalhome/launcher/settings/ActionPickerOption;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto/16 :goto_2

    :pswitch_9
    sget-object v1, Lcom/deepalhome/launcher/task/model/TaskAction$SetDarkTheme;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskAction$SetDarkTheme;

    invoke-virtual {v1}, Lcom/deepalhome/launcher/task/model/TaskAction;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0800cd

    const-string v4, "theme_dark"

    invoke-static {v0, v4, v3, v2, v1}, Lcom/deepalhome/launcher/settings/ActionPickerCatalog;->actionOption$default(Lcom/deepalhome/launcher/settings/ActionPickerCatalog;Ljava/lang/String;ILjava/lang/String;Lcom/deepalhome/launcher/task/model/TaskAction;)Lcom/deepalhome/launcher/settings/ActionPickerOption;

    move-result-object v1

    sget-object v2, Lcom/deepalhome/launcher/task/model/TaskAction$SetLightTheme;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskAction$SetLightTheme;

    invoke-virtual {v2}, Lcom/deepalhome/launcher/task/model/TaskAction;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "theme_light"

    invoke-static {v0, v4, v11, v3, v2}, Lcom/deepalhome/launcher/settings/ActionPickerCatalog;->actionOption$default(Lcom/deepalhome/launcher/settings/ActionPickerCatalog;Ljava/lang/String;ILjava/lang/String;Lcom/deepalhome/launcher/task/model/TaskAction;)Lcom/deepalhome/launcher/settings/ActionPickerOption;

    move-result-object v2

    sget-object v3, Lcom/deepalhome/launcher/task/model/TaskAction$SetAutoTheme;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskAction$SetAutoTheme;

    invoke-virtual {v3}, Lcom/deepalhome/launcher/task/model/TaskAction;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0800e7

    const-string v6, "theme_auto"

    invoke-static {v0, v6, v5, v4, v3}, Lcom/deepalhome/launcher/settings/ActionPickerCatalog;->actionOption$default(Lcom/deepalhome/launcher/settings/ActionPickerCatalog;Ljava/lang/String;ILjava/lang/String;Lcom/deepalhome/launcher/task/model/TaskAction;)Lcom/deepalhome/launcher/settings/ActionPickerOption;

    move-result-object v0

    filled-new-array {v1, v2, v0}, [Lcom/deepalhome/launcher/settings/ActionPickerOption;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto/16 :goto_2

    :pswitch_a
    sget-object v1, Lcom/deepalhome/launcher/task/model/TaskAction$PureElectricMode;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskAction$PureElectricMode;

    invoke-virtual {v1}, Lcom/deepalhome/launcher/task/model/TaskAction;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0800dd

    const-string v5, "power_mode_pure_electric"

    invoke-static {v0, v5, v3, v2, v1}, Lcom/deepalhome/launcher/settings/ActionPickerCatalog;->actionOption$default(Lcom/deepalhome/launcher/settings/ActionPickerCatalog;Ljava/lang/String;ILjava/lang/String;Lcom/deepalhome/launcher/task/model/TaskAction;)Lcom/deepalhome/launcher/settings/ActionPickerOption;

    move-result-object v1

    new-instance v2, Lcom/deepalhome/launcher/task/model/TaskAction$SetPowerMode;

    invoke-direct {v2, v14}, Lcom/deepalhome/launcher/task/model/TaskAction$SetPowerMode;-><init>(I)V

    const-string v3, "power_mode_city"

    const v5, 0x7f080158

    const-string v7, "City mode"

    invoke-static {v0, v3, v5, v7, v2}, Lcom/deepalhome/launcher/settings/ActionPickerCatalog;->actionOption$default(Lcom/deepalhome/launcher/settings/ActionPickerCatalog;Ljava/lang/String;ILjava/lang/String;Lcom/deepalhome/launcher/task/model/TaskAction;)Lcom/deepalhome/launcher/settings/ActionPickerOption;

    move-result-object v2

    new-instance v3, Lcom/deepalhome/launcher/task/model/TaskAction$SetPowerMode;

    invoke-direct {v3, v4}, Lcom/deepalhome/launcher/task/model/TaskAction$SetPowerMode;-><init>(I)V

    const-string v4, "Highway mode"

    const-string v5, "power_mode_highway"

    invoke-static {v0, v5, v8, v4, v3}, Lcom/deepalhome/launcher/settings/ActionPickerCatalog;->actionOption$default(Lcom/deepalhome/launcher/settings/ActionPickerCatalog;Ljava/lang/String;ILjava/lang/String;Lcom/deepalhome/launcher/task/model/TaskAction;)Lcom/deepalhome/launcher/settings/ActionPickerOption;

    move-result-object v3

    new-instance v4, Lcom/deepalhome/launcher/task/model/TaskAction$SetPowerMode;

    invoke-direct {v4, v6}, Lcom/deepalhome/launcher/task/model/TaskAction$SetPowerMode;-><init>(I)V

    const-string v5, "power_mode_mountain"

    const v6, 0x7f08015a

    const-string v7, "Mountain mode"

    invoke-static {v0, v5, v6, v7, v4}, Lcom/deepalhome/launcher/settings/ActionPickerCatalog;->actionOption$default(Lcom/deepalhome/launcher/settings/ActionPickerCatalog;Ljava/lang/String;ILjava/lang/String;Lcom/deepalhome/launcher/task/model/TaskAction;)Lcom/deepalhome/launcher/settings/ActionPickerOption;

    move-result-object v0

    filled-new-array {v1, v2, v3, v0}, [Lcom/deepalhome/launcher/settings/ActionPickerOption;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto/16 :goto_2

    :pswitch_b
    new-instance v1, Lcom/deepalhome/launcher/task/model/TaskAction$SetDriveMode;

    invoke-direct {v1, v2}, Lcom/deepalhome/launcher/task/model/TaskAction$SetDriveMode;-><init>(I)V

    const-string v2, "drive_mode_economy"

    const v3, 0x7f0800be

    const-string v5, "Economy mode"

    invoke-static {v0, v2, v3, v5, v1}, Lcom/deepalhome/launcher/settings/ActionPickerCatalog;->actionOption$default(Lcom/deepalhome/launcher/settings/ActionPickerCatalog;Ljava/lang/String;ILjava/lang/String;Lcom/deepalhome/launcher/task/model/TaskAction;)Lcom/deepalhome/launcher/settings/ActionPickerOption;

    move-result-object v1

    new-instance v2, Lcom/deepalhome/launcher/task/model/TaskAction$SetDriveMode;

    invoke-direct {v2, v4}, Lcom/deepalhome/launcher/task/model/TaskAction$SetDriveMode;-><init>(I)V

    const-string v3, "drive_mode_comfort"

    const v4, 0x7f08007f

    const-string v5, "Comfort mode"

    invoke-static {v0, v3, v4, v5, v2}, Lcom/deepalhome/launcher/settings/ActionPickerCatalog;->actionOption$default(Lcom/deepalhome/launcher/settings/ActionPickerCatalog;Ljava/lang/String;ILjava/lang/String;Lcom/deepalhome/launcher/task/model/TaskAction;)Lcom/deepalhome/launcher/settings/ActionPickerOption;

    move-result-object v2

    new-instance v3, Lcom/deepalhome/launcher/task/model/TaskAction$SetDriveMode;

    invoke-direct {v3, v6}, Lcom/deepalhome/launcher/task/model/TaskAction$SetDriveMode;-><init>(I)V

    const-string v4, "drive_mode_sport"

    const v5, 0x7f080269

    const-string v6, "Sport mode"

    invoke-static {v0, v4, v5, v6, v3}, Lcom/deepalhome/launcher/settings/ActionPickerCatalog;->actionOption$default(Lcom/deepalhome/launcher/settings/ActionPickerCatalog;Ljava/lang/String;ILjava/lang/String;Lcom/deepalhome/launcher/task/model/TaskAction;)Lcom/deepalhome/launcher/settings/ActionPickerOption;

    move-result-object v3

    new-instance v4, Lcom/deepalhome/launcher/task/model/TaskAction$SetDriveMode;

    const/4 v5, 0x4

    invoke-direct {v4, v5}, Lcom/deepalhome/launcher/task/model/TaskAction$SetDriveMode;-><init>(I)V

    const-string v5, "drive_mode_exclusive"

    const v6, 0x7f0800c0

    const-string v7, "Exclusive mode"

    invoke-static {v0, v5, v6, v7, v4}, Lcom/deepalhome/launcher/settings/ActionPickerCatalog;->actionOption$default(Lcom/deepalhome/launcher/settings/ActionPickerCatalog;Ljava/lang/String;ILjava/lang/String;Lcom/deepalhome/launcher/task/model/TaskAction;)Lcom/deepalhome/launcher/settings/ActionPickerOption;

    move-result-object v4

    new-instance v5, Lcom/deepalhome/launcher/task/model/TaskAction$SetDriveMode;

    invoke-direct {v5, v14}, Lcom/deepalhome/launcher/task/model/TaskAction$SetDriveMode;-><init>(I)V

    const-string v6, "drive_mode_custom"

    const v7, 0x7f0800c5

    const-string v8, "Custom mode"

    invoke-static {v0, v6, v7, v8, v5}, Lcom/deepalhome/launcher/settings/ActionPickerCatalog;->actionOption$default(Lcom/deepalhome/launcher/settings/ActionPickerCatalog;Ljava/lang/String;ILjava/lang/String;Lcom/deepalhome/launcher/task/model/TaskAction;)Lcom/deepalhome/launcher/settings/ActionPickerOption;

    move-result-object v0

    filled-new-array {v1, v2, v3, v4, v0}, [Lcom/deepalhome/launcher/settings/ActionPickerOption;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto/16 :goto_2

    :pswitch_c
    new-instance v0, Lkotlin/collections/builders/ListBuilder;

    invoke-direct {v0}, Lkotlin/collections/builders/ListBuilder;-><init>()V

    sget-object v1, Lcom/deepalhome/launcher/settings/ActionPickerCatalog;->INSTANCE:Lcom/deepalhome/launcher/settings/ActionPickerCatalog;

    sget-object v2, Lcom/deepalhome/launcher/task/model/TaskAction$ReturnHome;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskAction$ReturnHome;

    invoke-virtual {v2}, Lcom/deepalhome/launcher/task/model/TaskAction;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0800d0

    const-string v5, "return_home"

    invoke-static {v1, v5, v4, v3, v2}, Lcom/deepalhome/launcher/settings/ActionPickerCatalog;->actionOption$default(Lcom/deepalhome/launcher/settings/ActionPickerCatalog;Ljava/lang/String;ILjava/lang/String;Lcom/deepalhome/launcher/task/model/TaskAction;)Lcom/deepalhome/launcher/settings/ActionPickerOption;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/deepalhome/launcher/navigation/profile/VehicleBranchResolver;->INSTANCE:Lcom/deepalhome/launcher/navigation/profile/VehicleBranchResolver;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/navigation/profile/VehicleBranchResolver;->current()Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;

    move-result-object v2

    sget-object v3, Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;->S05:Lcom/deepalhome/launcher/navigation/profile/VehicleBranch;

    if-ne v2, v3, :cond_0

    sget-object v2, Lcom/deepalhome/launcher/task/model/TaskAction$OpenJourney;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskAction$OpenJourney;

    invoke-virtual {v2}, Lcom/deepalhome/launcher/task/model/TaskAction;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "open_journey"

    invoke-static {v1, v4, v8, v3, v2}, Lcom/deepalhome/launcher/settings/ActionPickerCatalog;->actionOption$default(Lcom/deepalhome/launcher/settings/ActionPickerCatalog;Ljava/lang/String;ILjava/lang/String;Lcom/deepalhome/launcher/task/model/TaskAction;)Lcom/deepalhome/launcher/settings/ActionPickerOption;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-object v2, Lcom/deepalhome/launcher/task/model/TaskAction$ShowCardWindows;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskAction$ShowCardWindows;

    invoke-virtual {v2}, Lcom/deepalhome/launcher/task/model/TaskAction;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "show_card_windows"

    const v5, 0x7f0800cc

    invoke-static {v1, v4, v5, v3, v2}, Lcom/deepalhome/launcher/settings/ActionPickerCatalog;->actionOption$default(Lcom/deepalhome/launcher/settings/ActionPickerCatalog;Ljava/lang/String;ILjava/lang/String;Lcom/deepalhome/launcher/task/model/TaskAction;)Lcom/deepalhome/launcher/settings/ActionPickerOption;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/deepalhome/launcher/task/model/TaskAction$ToggleMode;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskAction$ToggleMode;

    invoke-virtual {v2}, Lcom/deepalhome/launcher/task/model/TaskAction;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "toggle_mode"

    invoke-static {v1, v4, v5, v3, v2}, Lcom/deepalhome/launcher/settings/ActionPickerCatalog;->actionOption$default(Lcom/deepalhome/launcher/settings/ActionPickerCatalog;Ljava/lang/String;ILjava/lang/String;Lcom/deepalhome/launcher/task/model/TaskAction;)Lcom/deepalhome/launcher/settings/ActionPickerOption;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/deepalhome/launcher/task/model/TaskAction$ToggleAppCenter;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskAction$ToggleAppCenter;

    invoke-virtual {v2}, Lcom/deepalhome/launcher/task/model/TaskAction;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0800cb

    const-string v5, "toggle_app_center"

    invoke-static {v1, v5, v4, v3, v2}, Lcom/deepalhome/launcher/settings/ActionPickerCatalog;->actionOption$default(Lcom/deepalhome/launcher/settings/ActionPickerCatalog;Ljava/lang/String;ILjava/lang/String;Lcom/deepalhome/launcher/task/model/TaskAction;)Lcom/deepalhome/launcher/settings/ActionPickerOption;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/deepalhome/launcher/task/model/TaskAction$RandomWallpaper;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskAction$RandomWallpaper;

    invoke-virtual {v2}, Lcom/deepalhome/launcher/task/model/TaskAction;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f080176

    const-string v5, "random_wallpaper"

    invoke-static {v1, v5, v4, v3, v2}, Lcom/deepalhome/launcher/settings/ActionPickerCatalog;->actionOption$default(Lcom/deepalhome/launcher/settings/ActionPickerCatalog;Ljava/lang/String;ILjava/lang/String;Lcom/deepalhome/launcher/task/model/TaskAction;)Lcom/deepalhome/launcher/settings/ActionPickerOption;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/deepalhome/launcher/task/model/TaskAction$NextWallpaper;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskAction$NextWallpaper;

    invoke-virtual {v2}, Lcom/deepalhome/launcher/task/model/TaskAction;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f08017a

    const-string v5, "next_wallpaper"

    invoke-static {v1, v5, v4, v3, v2}, Lcom/deepalhome/launcher/settings/ActionPickerCatalog;->actionOption$default(Lcom/deepalhome/launcher/settings/ActionPickerCatalog;Ljava/lang/String;ILjava/lang/String;Lcom/deepalhome/launcher/task/model/TaskAction;)Lcom/deepalhome/launcher/settings/ActionPickerOption;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/deepalhome/launcher/task/model/TaskAction$PreviousWallpaper;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskAction$PreviousWallpaper;

    invoke-virtual {v2}, Lcom/deepalhome/launcher/task/model/TaskAction;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f08017b

    const-string v5, "previous_wallpaper"

    invoke-static {v1, v5, v4, v3, v2}, Lcom/deepalhome/launcher/settings/ActionPickerCatalog;->actionOption$default(Lcom/deepalhome/launcher/settings/ActionPickerCatalog;Ljava/lang/String;ILjava/lang/String;Lcom/deepalhome/launcher/task/model/TaskAction;)Lcom/deepalhome/launcher/settings/ActionPickerOption;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/deepalhome/launcher/task/model/TaskAction$EnableHudLyrics;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskAction$EnableHudLyrics;

    invoke-virtual {v2}, Lcom/deepalhome/launcher/task/model/TaskAction;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0800d1

    const-string v5, "enable_hud_lyrics"

    invoke-static {v1, v5, v4, v3, v2}, Lcom/deepalhome/launcher/settings/ActionPickerCatalog;->actionOption$default(Lcom/deepalhome/launcher/settings/ActionPickerCatalog;Ljava/lang/String;ILjava/lang/String;Lcom/deepalhome/launcher/task/model/TaskAction;)Lcom/deepalhome/launcher/settings/ActionPickerOption;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/deepalhome/launcher/task/model/TaskAction$DisableHudLyrics;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskAction$DisableHudLyrics;

    invoke-virtual {v2}, Lcom/deepalhome/launcher/task/model/TaskAction;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0800d2

    const-string v5, "disable_hud_lyrics"

    invoke-static {v1, v5, v4, v3, v2}, Lcom/deepalhome/launcher/settings/ActionPickerCatalog;->actionOption$default(Lcom/deepalhome/launcher/settings/ActionPickerCatalog;Ljava/lang/String;ILjava/lang/String;Lcom/deepalhome/launcher/task/model/TaskAction;)Lcom/deepalhome/launcher/settings/ActionPickerOption;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/deepalhome/launcher/task/model/TaskAction$ToggleCarNavigationBar;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskAction$ToggleCarNavigationBar;

    invoke-virtual {v2}, Lcom/deepalhome/launcher/task/model/TaskAction;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0800dc

    const-string v5, "toggle_car_navigation_bar"

    invoke-static {v1, v5, v4, v3, v2}, Lcom/deepalhome/launcher/settings/ActionPickerCatalog;->actionOption$default(Lcom/deepalhome/launcher/settings/ActionPickerCatalog;Ljava/lang/String;ILjava/lang/String;Lcom/deepalhome/launcher/task/model/TaskAction;)Lcom/deepalhome/launcher/settings/ActionPickerOption;

    move-result-object v2

    invoke-virtual {v0, v2}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/deepalhome/launcher/task/model/TaskAction$ToggleCarStatusBar;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskAction$ToggleCarStatusBar;

    invoke-virtual {v2}, Lcom/deepalhome/launcher/task/model/TaskAction;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0800e5

    const-string v5, "toggle_car_status_bar"

    invoke-static {v1, v5, v4, v3, v2}, Lcom/deepalhome/launcher/settings/ActionPickerCatalog;->actionOption$default(Lcom/deepalhome/launcher/settings/ActionPickerCatalog;Ljava/lang/String;ILjava/lang/String;Lcom/deepalhome/launcher/task/model/TaskAction;)Lcom/deepalhome/launcher/settings/ActionPickerOption;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lkotlin/collections/builders/ListBuilder;->build()Lkotlin/collections/builders/ListBuilder;

    move-result-object v1

    goto :goto_2

    :pswitch_d
    sget-object v0, Lcom/deepalhome/launcher/task/ScheduledTaskManager;->INSTANCE:Lcom/deepalhome/launcher/task/ScheduledTaskManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/task/ScheduledTaskManager;->getTriggerlessTasks()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/task/model/ScheduledTask;

    sget-object v3, Lcom/deepalhome/launcher/settings/ActionPickerCatalog;->INSTANCE:Lcom/deepalhome/launcher/settings/ActionPickerCatalog;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "triggerless_task_"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/deepalhome/launcher/task/model/ScheduledTask;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/deepalhome/launcher/task/model/ScheduledTask;->getName()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/deepalhome/launcher/task/model/TaskAction$ExecuteTaskEvent;

    invoke-virtual {v2}, Lcom/deepalhome/launcher/task/model/ScheduledTask;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2}, Lcom/deepalhome/launcher/task/model/TaskAction$ExecuteTaskEvent;-><init>(Ljava/lang/String;)V

    const v2, 0x7f08025e

    invoke-static {v3, v4, v2, v5, v6}, Lcom/deepalhome/launcher/settings/ActionPickerCatalog;->actionOption$default(Lcom/deepalhome/launcher/settings/ActionPickerCatalog;Ljava/lang/String;ILjava/lang/String;Lcom/deepalhome/launcher/task/model/TaskAction;)Lcom/deepalhome/launcher/settings/ActionPickerOption;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    :goto_2
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

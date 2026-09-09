.class public final enum Lcom/deepalhome/launcher/event/MenuType;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $ENTRIES:Lkotlin/enums/EnumEntriesList;

.field public static final synthetic $VALUES:[Lcom/deepalhome/launcher/event/MenuType;

.field public static final Companion:Lcom/deepalhome/launcher/event/MenuType$Companion;


# instance fields
.field private final displayNameRes:I

.field private final iconRes:I

.field private final key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    new-instance v6, Lcom/deepalhome/launcher/event/MenuType;

    const/4 v1, 0x0

    const-string v5, "app_list"

    const-string v4, "APP_LIST"

    const v2, 0x7f130117

    const v3, 0x7f0800cb

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/event/MenuType;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/deepalhome/launcher/event/MenuType;

    const/4 v8, 0x1

    const-string v12, "task_list"

    const-string v11, "TASK_LIST"

    const v9, 0x7f130123

    const v10, 0x7f08025e

    move-object v7, v1

    invoke-direct/range {v7 .. v12}, Lcom/deepalhome/launcher/event/MenuType;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/deepalhome/launcher/event/MenuType;

    const/4 v14, 0x2

    const-string v18, "drive_mode"

    const-string v17, "DRIVE_MODE"

    const v15, 0x7f13011a

    const v16, 0x7f0800e8

    move-object v13, v2

    invoke-direct/range {v13 .. v18}, Lcom/deepalhome/launcher/event/MenuType;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/deepalhome/launcher/event/MenuType;

    const/4 v8, 0x3

    const-string v12, "power_mode"

    const-string v11, "POWER_MODE"

    const v9, 0x7f130120

    const v10, 0x7f0800dd

    move-object v7, v3

    invoke-direct/range {v7 .. v12}, Lcom/deepalhome/launcher/event/MenuType;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/deepalhome/launcher/event/MenuType;

    const/4 v14, 0x4

    const-string v18, "body_control"

    const-string v17, "BODY_CONTROL"

    const v15, 0x7f130118

    const v16, 0x7f0800fd

    move-object v13, v4

    invoke-direct/range {v13 .. v18}, Lcom/deepalhome/launcher/event/MenuType;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/deepalhome/launcher/event/MenuType;

    const/4 v8, 0x5

    const-string v12, "wind_direction"

    const-string v11, "WIND_DIRECTION"

    const v9, 0x7f130124

    const v10, 0x7f08017e

    move-object v7, v5

    invoke-direct/range {v7 .. v12}, Lcom/deepalhome/launcher/event/MenuType;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    new-instance v7, Lcom/deepalhome/launcher/event/MenuType;

    const/4 v14, 0x6

    const-string v18, "seat_ventilation"

    const-string v17, "SEAT_VENTILATION"

    const v15, 0x7f130122

    const v16, 0x7f080123

    move-object v13, v7

    invoke-direct/range {v13 .. v18}, Lcom/deepalhome/launcher/event/MenuType;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    new-instance v14, Lcom/deepalhome/launcher/event/MenuType;

    const/4 v9, 0x7

    const-string v13, "seat_heating"

    const-string v12, "SEAT_HEATING"

    const v10, 0x7f130121

    const v11, 0x7f080115

    move-object v8, v14

    invoke-direct/range {v8 .. v13}, Lcom/deepalhome/launcher/event/MenuType;-><init>(IIILjava/lang/String;Ljava/lang/String;)V

    move-object v0, v6

    move-object v6, v7

    move-object v7, v14

    filled-new-array/range {v0 .. v7}, [Lcom/deepalhome/launcher/event/MenuType;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/launcher/event/MenuType;->$VALUES:[Lcom/deepalhome/launcher/event/MenuType;

    invoke-static {v0}, Lkotlin/io/TextStreamsKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntriesList;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/launcher/event/MenuType;->$ENTRIES:Lkotlin/enums/EnumEntriesList;

    new-instance v0, Lcom/deepalhome/launcher/event/MenuType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/event/MenuType$Companion;-><init>(I)V

    sput-object v0, Lcom/deepalhome/launcher/event/MenuType;->Companion:Lcom/deepalhome/launcher/event/MenuType$Companion;

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p4, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p5, p0, Lcom/deepalhome/launcher/event/MenuType;->key:Ljava/lang/String;

    iput p2, p0, Lcom/deepalhome/launcher/event/MenuType;->displayNameRes:I

    iput p3, p0, Lcom/deepalhome/launcher/event/MenuType;->iconRes:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/deepalhome/launcher/event/MenuType;
    .locals 1

    const-class v0, Lcom/deepalhome/launcher/event/MenuType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/event/MenuType;

    return-object p0
.end method

.method public static values()[Lcom/deepalhome/launcher/event/MenuType;
    .locals 1

    sget-object v0, Lcom/deepalhome/launcher/event/MenuType;->$VALUES:[Lcom/deepalhome/launcher/event/MenuType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/deepalhome/launcher/event/MenuType;

    return-object v0
.end method


# virtual methods
.method public final getDisplayName()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    iget p0, p0, Lcom/deepalhome/launcher/event/MenuType;->displayNameRes:I

    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "getString(...)"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final getIconRes()I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/event/MenuType;->iconRes:I

    return p0
.end method

.method public final getKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/event/MenuType;->key:Ljava/lang/String;

    return-object p0
.end method

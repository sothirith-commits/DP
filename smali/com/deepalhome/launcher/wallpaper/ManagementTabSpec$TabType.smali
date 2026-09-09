.class public final enum Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$TabType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TabType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$TabType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$TabType;

.field public static final enum DYNAMIC_WALLPAPER:Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$TabType;

.field public static final enum FLOAT_BALL:Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$TabType;

.field public static final enum STATIC_WALLPAPER:Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$TabType;


# direct methods
.method private static final synthetic $values()[Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$TabType;
    .locals 3

    sget-object v0, Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$TabType;->STATIC_WALLPAPER:Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$TabType;

    sget-object v1, Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$TabType;->DYNAMIC_WALLPAPER:Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$TabType;

    sget-object v2, Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$TabType;->FLOAT_BALL:Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$TabType;

    filled-new-array {v0, v1, v2}, [Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$TabType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$TabType;

    const-string v1, "STATIC_WALLPAPER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$TabType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$TabType;->STATIC_WALLPAPER:Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$TabType;

    new-instance v0, Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$TabType;

    const-string v1, "DYNAMIC_WALLPAPER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$TabType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$TabType;->DYNAMIC_WALLPAPER:Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$TabType;

    new-instance v0, Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$TabType;

    const-string v1, "FLOAT_BALL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$TabType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$TabType;->FLOAT_BALL:Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$TabType;

    invoke-static {}, Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$TabType;->$values()[Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$TabType;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$TabType;->$VALUES:[Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$TabType;

    invoke-static {v0}, Lkotlin/io/TextStreamsKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntriesList;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$TabType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries;"
        }
    .end annotation

    sget-object v0, Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$TabType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$TabType;
    .locals 1

    const-class v0, Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$TabType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$TabType;

    return-object p0
.end method

.method public static values()[Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$TabType;
    .locals 1

    sget-object v0, Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$TabType;->$VALUES:[Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$TabType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$TabType;

    return-object v0
.end method

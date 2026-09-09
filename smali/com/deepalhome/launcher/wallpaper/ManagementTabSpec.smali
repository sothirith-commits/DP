.class public abstract Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$Companion;,
        Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$DynamicWallpapers;,
        Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$FloatBallIcons;,
        Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$StaticWallpapers;,
        Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$TabType;
    }
.end annotation


# static fields
.field private static final ALL:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec;",
            ">;"
        }
    .end annotation
.end field

.field public static final ARG_TAB_TYPE:Ljava/lang/String; = "ARG_TAB_TYPE"

.field public static final Companion:Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$Companion;

.field private static final FLOAT_BALL_EXTENSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final IMAGE_EXTENSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final VIDEO_EXTENSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final allowedExtensions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final emptyMessageRes:I

.field private final storageDirProvider:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0;"
        }
    .end annotation
.end field

.field private final tabType:Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$TabType;

.field private final titleRes:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec;->Companion:Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$Companion;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec;

    sget-object v1, Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$StaticWallpapers;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$StaticWallpapers;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$DynamicWallpapers;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$DynamicWallpapers;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$FloatBallIcons;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$FloatBallIcons;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec;->ALL:Ljava/util/List;

    const-string v7, "heic"

    const-string v8, "heif"

    const-string v1, "jpg"

    const-string v2, "jpeg"

    const-string v3, "png"

    const-string v4, "webp"

    const-string v5, "gif"

    const-string v6, "bmp"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/SetsKt__SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec;->IMAGE_EXTENSIONS:Ljava/util/Set;

    const-string v0, "m4v"

    const-string v1, "mov"

    const-string v2, "mp4"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/SetsKt__SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec;->VIDEO_EXTENSIONS:Ljava/util/Set;

    const-string v5, "gif"

    const-string v6, "bmp"

    const-string v1, "jpg"

    const-string v2, "jpeg"

    const-string v3, "png"

    const-string v4, "webp"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/SetsKt__SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec;->FLOAT_BALL_EXTENSIONS:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>(Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$TabType;IILjava/util/Set;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$TabType;",
            "II",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/functions/Function0;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec;->tabType:Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$TabType;

    iput p2, p0, Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec;->titleRes:I

    iput p3, p0, Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec;->emptyMessageRes:I

    iput-object p4, p0, Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec;->allowedExtensions:Ljava/util/Set;

    iput-object p5, p0, Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec;->storageDirProvider:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$TabType;IILjava/util/Set;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec;-><init>(Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$TabType;IILjava/util/Set;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final synthetic access$getALL$cp()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec;->ALL:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic access$getFLOAT_BALL_EXTENSIONS$cp()Ljava/util/Set;
    .locals 1

    sget-object v0, Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec;->FLOAT_BALL_EXTENSIONS:Ljava/util/Set;

    return-object v0
.end method

.method public static final synthetic access$getIMAGE_EXTENSIONS$cp()Ljava/util/Set;
    .locals 1

    sget-object v0, Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec;->IMAGE_EXTENSIONS:Ljava/util/Set;

    return-object v0
.end method

.method public static final synthetic access$getVIDEO_EXTENSIONS$cp()Ljava/util/Set;
    .locals 1

    sget-object v0, Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec;->VIDEO_EXTENSIONS:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public abstract createFragment()Landroidx/fragment/app/Fragment;
.end method

.method public final getAllowedExtensions()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec;->allowedExtensions:Ljava/util/Set;

    return-object p0
.end method

.method public final getEmptyMessageRes()I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec;->emptyMessageRes:I

    return p0
.end method

.method public final getStorageDir()Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec;->storageDirProvider:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/File;

    return-object p0
.end method

.method public final getTabType()Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$TabType;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec;->tabType:Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$TabType;

    return-object p0
.end method

.method public final getTitleRes()I
    .locals 0

    iget p0, p0, Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec;->titleRes:I

    return p0
.end method

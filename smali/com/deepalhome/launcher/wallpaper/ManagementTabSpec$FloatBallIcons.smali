.class public final Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$FloatBallIcons;
.super Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FloatBallIcons"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$FloatBallIcons;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$FloatBallIcons;

    invoke-direct {v0}, Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$FloatBallIcons;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$FloatBallIcons;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$FloatBallIcons;

    return-void
.end method

.method private constructor <init>()V
    .locals 7

    sget-object v1, Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$TabType;->FLOAT_BALL:Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$TabType;

    invoke-static {}, Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec;->access$getFLOAT_BALL_EXTENSIONS$cp()Ljava/util/Set;

    move-result-object v4

    sget-object v5, Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$FloatBallIcons$1;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$FloatBallIcons$1;

    const/4 v6, 0x0

    const v2, 0x7f1302ec

    const v3, 0x7f1301b2

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec;-><init>(Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$TabType;IILjava/util/Set;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public createFragment()Landroidx/fragment/app/Fragment;
    .locals 0

    new-instance p0, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment;

    invoke-direct {p0}, Lcom/deepalhome/launcher/wallpaper/FloatBallManagementFragment;-><init>()V

    return-object p0
.end method

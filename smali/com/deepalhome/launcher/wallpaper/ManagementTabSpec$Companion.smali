.class public final Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$Companion$WhenMappings;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromTabType(Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$TabType;)Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec;
    .locals 0

    const-string p0, "tabType"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_2

    const/4 p1, 0x2

    if-eq p0, p1, :cond_1

    const/4 p1, 0x3

    if-ne p0, p1, :cond_0

    sget-object p0, Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$FloatBallIcons;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$FloatBallIcons;

    goto :goto_0

    :cond_0
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_1
    sget-object p0, Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$DynamicWallpapers;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$DynamicWallpapers;

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$StaticWallpapers;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$StaticWallpapers;

    :goto_0
    return-object p0
.end method

.method public final fromTabTypeName(Ljava/lang/String;)Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec;
    .locals 1

    const-string v0, "name"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$TabType;->valueOf(Ljava/lang/String;)Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$TabType;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$Companion;->fromTabType(Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec$TabType;)Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec;

    move-result-object p0

    return-object p0
.end method

.method public final getALL()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/deepalhome/launcher/wallpaper/ManagementTabSpec;->access$getALL$cp()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

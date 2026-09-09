.class public final enum Lcom/deepalhome/launcher/splash/FirstLaunchView$Step;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/deepalhome/launcher/splash/FirstLaunchView$Step;

.field public static final enum Agreement:Lcom/deepalhome/launcher/splash/FirstLaunchView$Step;

.field public static final enum DangerousPermission:Lcom/deepalhome/launcher/splash/FirstLaunchView$Step;

.field public static final enum FilePermission:Lcom/deepalhome/launcher/splash/FirstLaunchView$Step;

.field public static final enum FloatWindowPermission:Lcom/deepalhome/launcher/splash/FirstLaunchView$Step;

.field public static final enum InitCar:Lcom/deepalhome/launcher/splash/FirstLaunchView$Step;

.field public static final enum LogPermission:Lcom/deepalhome/launcher/splash/FirstLaunchView$Step;

.field public static final enum None:Lcom/deepalhome/launcher/splash/FirstLaunchView$Step;

.field public static final enum NotificationPermission:Lcom/deepalhome/launcher/splash/FirstLaunchView$Step;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/deepalhome/launcher/splash/FirstLaunchView$Step;

    const-string v1, "Agreement"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/deepalhome/launcher/splash/FirstLaunchView$Step;->Agreement:Lcom/deepalhome/launcher/splash/FirstLaunchView$Step;

    new-instance v1, Lcom/deepalhome/launcher/splash/FirstLaunchView$Step;

    const-string v2, "LogPermission"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/deepalhome/launcher/splash/FirstLaunchView$Step;->LogPermission:Lcom/deepalhome/launcher/splash/FirstLaunchView$Step;

    new-instance v2, Lcom/deepalhome/launcher/splash/FirstLaunchView$Step;

    const-string v3, "FloatWindowPermission"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/deepalhome/launcher/splash/FirstLaunchView$Step;->FloatWindowPermission:Lcom/deepalhome/launcher/splash/FirstLaunchView$Step;

    new-instance v3, Lcom/deepalhome/launcher/splash/FirstLaunchView$Step;

    const-string v4, "NotificationPermission"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/deepalhome/launcher/splash/FirstLaunchView$Step;->NotificationPermission:Lcom/deepalhome/launcher/splash/FirstLaunchView$Step;

    new-instance v4, Lcom/deepalhome/launcher/splash/FirstLaunchView$Step;

    const-string v5, "DangerousPermission"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/deepalhome/launcher/splash/FirstLaunchView$Step;->DangerousPermission:Lcom/deepalhome/launcher/splash/FirstLaunchView$Step;

    new-instance v5, Lcom/deepalhome/launcher/splash/FirstLaunchView$Step;

    const-string v6, "FilePermission"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/deepalhome/launcher/splash/FirstLaunchView$Step;->FilePermission:Lcom/deepalhome/launcher/splash/FirstLaunchView$Step;

    new-instance v6, Lcom/deepalhome/launcher/splash/FirstLaunchView$Step;

    const-string v7, "InitCar"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/deepalhome/launcher/splash/FirstLaunchView$Step;->InitCar:Lcom/deepalhome/launcher/splash/FirstLaunchView$Step;

    new-instance v7, Lcom/deepalhome/launcher/splash/FirstLaunchView$Step;

    const-string v8, "None"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/deepalhome/launcher/splash/FirstLaunchView$Step;->None:Lcom/deepalhome/launcher/splash/FirstLaunchView$Step;

    filled-new-array/range {v0 .. v7}, [Lcom/deepalhome/launcher/splash/FirstLaunchView$Step;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/launcher/splash/FirstLaunchView$Step;->$VALUES:[Lcom/deepalhome/launcher/splash/FirstLaunchView$Step;

    invoke-static {v0}, Lkotlin/io/TextStreamsKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntriesList;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/deepalhome/launcher/splash/FirstLaunchView$Step;
    .locals 1

    const-class v0, Lcom/deepalhome/launcher/splash/FirstLaunchView$Step;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/splash/FirstLaunchView$Step;

    return-object p0
.end method

.method public static values()[Lcom/deepalhome/launcher/splash/FirstLaunchView$Step;
    .locals 1

    sget-object v0, Lcom/deepalhome/launcher/splash/FirstLaunchView$Step;->$VALUES:[Lcom/deepalhome/launcher/splash/FirstLaunchView$Step;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/deepalhome/launcher/splash/FirstLaunchView$Step;

    return-object v0
.end method

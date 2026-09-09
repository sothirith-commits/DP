.class public final Lcom/tinnove/polymericservice/base/model/WTResultModel$Companion;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lcom/tinnove/polymericservice/base/model/WTResultModel$Companion;-><init>()V

    return-void
.end method

.method public static createFromParcel(Landroid/os/Parcel;)Lcom/tinnove/polymericservice/base/model/WTResultModel;
    .locals 2

    new-instance v0, Lcom/tinnove/polymericservice/base/model/WTResultModel;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tinnove/polymericservice/base/model/WTResultModel;->code:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tinnove/polymericservice/base/model/WTResultModel;->msg:Ljava/lang/String;

    const-class v1, Lcom/tinnove/polymericservice/base/model/WTResultModel;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object p0

    iput-object p0, v0, Lcom/tinnove/polymericservice/base/model/WTResultModel;->data:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/tinnove/polymericservice/base/model/WTResultModel$Companion;->createFromParcel(Landroid/os/Parcel;)Lcom/tinnove/polymericservice/base/model/WTResultModel;

    move-result-object p0

    return-object p0
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    new-array p0, p1, [Lcom/tinnove/polymericservice/base/model/WTResultModel;

    return-object p0
.end method

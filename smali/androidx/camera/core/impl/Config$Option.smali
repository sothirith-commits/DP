.class public abstract Landroidx/camera/core/impl/Config$Option;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/Class;Ljava/lang/String;)Landroidx/camera/core/impl/AutoValue_Config_Option;
    .locals 1

    new-instance v0, Landroidx/camera/core/impl/AutoValue_Config_Option;

    invoke-direct {v0, p0, p1}, Landroidx/camera/core/impl/AutoValue_Config_Option;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getToken()Ljava/lang/Object;
.end method

.method public abstract getValueClass()Ljava/lang/Class;
.end method

.class public interface abstract Lcom/tinnove/polymericservice/IPolymericService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public abstract asynCallMethod(Lcom/tinnove/polymericservice/base/model/WTRequestModel;Lcom/tinnove/polymericservice/IPolymericListener;)V
.end method

.method public abstract callMethod(Lcom/tinnove/polymericservice/base/model/WTRequestModel;)Lcom/tinnove/polymericservice/base/model/WTResultModel;
.end method

.method public abstract registerEventListener(IIILcom/tinnove/polymericservice/IPolymericEventListener;)V
.end method

.method public abstract unRegisterEventListener()V
.end method

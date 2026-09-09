.class public Lcom/efs/sdk/base/protocol/record/EfsJSONLog;
.super Lcom/efs/sdk/base/protocol/record/AbsRecordLog;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/efs/sdk/base/protocol/record/AbsRecordLog;-><init>(Ljava/lang/String;)V

    const-string v0, "type"

    invoke-virtual {p0, v0, p1}, Lcom/efs/sdk/base/protocol/record/AbsRecordLog;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public generate()[B
    .locals 1

    invoke-virtual {p0}, Lcom/efs/sdk/base/protocol/record/EfsJSONLog;->generateString()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/efs/sdk/base/core/controller/ControllerCenter;->getGlobalEnvStruct()Lcom/efs/sdk/base/core/config/GlobalEnvStruct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->isPrintLogDetail()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "efs.base"

    invoke-static {v0, p0}, Lcom/efs/sdk/base/core/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    return-object p0
.end method

.method public generateString()Ljava/lang/String;
    .locals 1

    new-instance v0, Lorg/json/JSONObject;

    iget-object p0, p0, Lcom/efs/sdk/base/protocol/record/AbsRecordLog;->dataMap:Ljava/util/HashMap;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLinkId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/efs/sdk/base/protocol/record/AbsRecordLog;->dataMap:Ljava/util/HashMap;

    const-string v1, "w_frmid"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/efs/sdk/base/protocol/record/AbsRecordLog;->dataMap:Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getLinkKey()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/efs/sdk/base/protocol/record/AbsRecordLog;->dataMap:Ljava/util/HashMap;

    const-string v1, "w_linkKey"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/efs/sdk/base/protocol/record/AbsRecordLog;->dataMap:Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public insertGlobal(Lcom/efs/sdk/base/core/config/GlobalInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/efs/sdk/base/protocol/record/AbsRecordLog;->dataMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/efs/sdk/base/core/config/GlobalInfo;->getGlobalInfoMap()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    iget-object p0, p0, Lcom/efs/sdk/base/protocol/record/AbsRecordLog;->dataMap:Ljava/util/HashMap;

    invoke-static {}, Lcom/efs/sdk/base/core/controller/ControllerCenter;->getGlobalEnvStruct()Lcom/efs/sdk/base/core/config/GlobalEnvStruct;

    move-result-object p1

    invoke-virtual {p1}, Lcom/efs/sdk/base/core/config/GlobalEnvStruct;->getPublicParamMap()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

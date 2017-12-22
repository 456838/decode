.class final Lcom/xiaomi/account/ui/bh;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/xiaomi/account/task/o;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xiaomi/account/task/o",
        "<",
        "Landroid/util/Pair",
        "<",
        "Ljava/lang/Integer;",
        "Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic gm:Lcom/xiaomi/account/ui/OtherDeviceDetailInfoActivity;

.field final synthetic gn:Z

.field final synthetic go:Ljava/lang/String;

.field final synthetic gp:Z


# direct methods
.method constructor <init>(Lcom/xiaomi/account/ui/OtherDeviceDetailInfoActivity;ZLjava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/account/ui/bh;->gm:Lcom/xiaomi/account/ui/OtherDeviceDetailInfoActivity;

    iput-boolean p2, p0, Lcom/xiaomi/account/ui/bh;->gn:Z

    iput-object p3, p0, Lcom/xiaomi/account/ui/bh;->go:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/xiaomi/account/ui/bh;->gp:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x2

    const-string/jumbo v0, "delete binded device"

    :try_start_0
    iget-boolean v0, p0, Lcom/xiaomi/account/ui/bh;->gn:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "OtherDeviceDetailInfoAc"

    const-string/jumbo v1, "start to remove from trusted device"

    invoke-static {v0, v1}, Lcom/xiaomi/accountsdk/utils/e;->ahj(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/xiaomi/accountsdk/request/AccessDeniedException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/xiaomi/accountsdk/request/InvalidResponseException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/xiaomi/accountsdk/request/AuthenticationFailureException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/xiaomi/accountsdk/request/CipherException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/xiaomi/account/exception/NullPassportInfoException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :try_start_1
    invoke-static {}, Lcom/xiaomi/account/utils/t;->ph()Lcom/xiaomi/account/utils/t;

    move-result-object v0

    iget-object v3, p0, Lcom/xiaomi/account/ui/bh;->go:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/xiaomi/account/utils/t;->pn(Ljava/lang/String;)V

    :goto_0
    iget-boolean v0, p0, Lcom/xiaomi/account/ui/bh;->gp:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "OtherDeviceDetailInfoAc"

    const-string/jumbo v3, "start to delete binded device"

    invoke-static {v0, v3}, Lcom/xiaomi/accountsdk/utils/e;->ahj(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/xiaomi/accountsdk/request/AccessDeniedException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lcom/xiaomi/accountsdk/request/InvalidResponseException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Lcom/xiaomi/accountsdk/request/AuthenticationFailureException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Lcom/xiaomi/accountsdk/request/CipherException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Lcom/xiaomi/account/exception/NullPassportInfoException; {:try_start_1 .. :try_end_1} :catch_b

    :try_start_2
    invoke-static {}, Lcom/xiaomi/account/utils/t;->ph()Lcom/xiaomi/account/utils/t;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/account/ui/bh;->go:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaomi/account/utils/t;->po(Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/xiaomi/accountsdk/request/AccessDeniedException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lcom/xiaomi/accountsdk/request/InvalidResponseException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lcom/xiaomi/accountsdk/request/AuthenticationFailureException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/xiaomi/accountsdk/request/CipherException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/xiaomi/account/exception/NullPassportInfoException; {:try_start_2 .. :try_end_2} :catch_0

    move v1, v2

    :cond_0
    :try_start_3
    sget-object v0, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;->jx:Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;
    :try_end_3
    .catch Lcom/xiaomi/accountsdk/request/AccessDeniedException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Lcom/xiaomi/accountsdk/request/InvalidResponseException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Lcom/xiaomi/accountsdk/request/AuthenticationFailureException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Lcom/xiaomi/accountsdk/request/CipherException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Lcom/xiaomi/account/exception/NullPassportInfoException; {:try_start_3 .. :try_end_3} :catch_b

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    move v1, v2

    :goto_2
    const-string/jumbo v2, "OtherDeviceDetailInfoAc"

    const-string/jumbo v3, "delete binded device"

    invoke-static {v2, v3, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v0, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;->ju:Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;

    goto :goto_1

    :catch_1
    move-exception v0

    move v1, v2

    :goto_3
    const-string/jumbo v2, "OtherDeviceDetailInfoAc"

    const-string/jumbo v3, "delete binded device"

    invoke-static {v2, v3, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v0, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;->jr:Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;

    goto :goto_1

    :catch_2
    move-exception v0

    move v1, v2

    :goto_4
    const-string/jumbo v2, "OtherDeviceDetailInfoAc"

    const-string/jumbo v3, "delete binded device"

    invoke-static {v2, v3, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v0, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;->jt:Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;

    goto :goto_1

    :catch_3
    move-exception v0

    move v1, v2

    :goto_5
    const-string/jumbo v2, "OtherDeviceDetailInfoAc"

    const-string/jumbo v3, "delete binded device"

    invoke-static {v2, v3, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v0, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;->jn:Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;

    goto :goto_1

    :catch_4
    move-exception v0

    move v1, v2

    :goto_6
    const-string/jumbo v2, "OtherDeviceDetailInfoAc"

    const-string/jumbo v3, "delete binded device"

    invoke-static {v2, v3, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v0, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;->jt:Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;

    goto :goto_1

    :catch_5
    move-exception v0

    move v1, v2

    :goto_7
    const-string/jumbo v2, "OtherDeviceDetailInfoAc"

    const-string/jumbo v3, "delete binded device"

    invoke-static {v2, v3, v0}, Lcom/xiaomi/accountsdk/utils/e;->ahh(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v0, Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;->jm:Lcom/xiaomi/account/task/SimpleAsyncTask$ResultType;

    goto :goto_1

    :catch_6
    move-exception v0

    goto :goto_7

    :catch_7
    move-exception v0

    goto :goto_6

    :catch_8
    move-exception v0

    goto :goto_5

    :catch_9
    move-exception v0

    goto :goto_4

    :catch_a
    move-exception v0

    goto :goto_3

    :catch_b
    move-exception v0

    goto :goto_2

    :cond_1
    move v1, v2

    goto/16 :goto_0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/xiaomi/account/ui/bh;->run()Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

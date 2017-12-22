.class public Lcom/xiaomi/account/utils/s;
.super Lcom/xiaomi/accountsdk/utils/e;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/accountsdk/utils/e;-><init>()V

    return-void
.end method


# virtual methods
.method public oX(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    invoke-static {}, Lmiui/util/Log;->getFullLogger()Lmiui/util/Log$Facade;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lmiui/util/Log$Facade;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public oY(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    invoke-static {}, Lmiui/util/Log;->getFullLogger()Lmiui/util/Log$Facade;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lmiui/util/Log$Facade;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method

.method public oZ(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    invoke-static {}, Lmiui/util/Log;->getFullLogger()Lmiui/util/Log$Facade;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lmiui/util/Log$Facade;->error(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public pa(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    invoke-static {}, Lmiui/util/Log;->getFullLogger()Lmiui/util/Log$Facade;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lmiui/util/Log$Facade;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method

.method public pb(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    invoke-static {}, Lmiui/util/Log;->getFullLogger()Lmiui/util/Log$Facade;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lmiui/util/Log$Facade;->info(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public pc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    invoke-static {}, Lmiui/util/Log;->getFullLogger()Lmiui/util/Log$Facade;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lmiui/util/Log$Facade;->info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method

.method public pd(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    invoke-static {}, Lmiui/util/Log;->getFullLogger()Lmiui/util/Log$Facade;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lmiui/util/Log$Facade;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public pe(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    invoke-static {}, Lmiui/util/Log;->getFullLogger()Lmiui/util/Log$Facade;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lmiui/util/Log$Facade;->warn(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public pf(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 2

    invoke-static {}, Lmiui/util/Log;->getFullLogger()Lmiui/util/Log$Facade;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, p1, v1, p2}, Lmiui/util/Log$Facade;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method

.method public pg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1

    invoke-static {}, Lmiui/util/Log;->getFullLogger()Lmiui/util/Log$Facade;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lmiui/util/Log$Facade;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0
.end method

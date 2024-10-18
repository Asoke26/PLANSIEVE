SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u,
badges b
WHERE p.Score>=-1
AND p.ViewCount>=0
AND p.ViewCount<=39097
AND p.AnswerCount>=0
AND p.CommentCount>=0
AND p.CommentCount<=11
AND p.FavoriteCount<=10
AND u.Views>=0
AND u.DownVotes>=0
AND u.DownVotes<=0
AND u.UpVotes>=0
AND u.UpVotes<=37
AND ph.CreationDate>=76
AND ph.CreationDate<=1534
AND p.CreationDate>=52
AND p.CreationDate<=1540

AND u.Id = p.OwnerUserId
AND p.OwnerUserId = ph.UserId
AND ph.UserId = b.UserId;
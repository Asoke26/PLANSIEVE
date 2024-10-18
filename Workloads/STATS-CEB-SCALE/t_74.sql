SELECT COUNT(*)
 FROM comments c,
posts p,
postHistory ph,
votes v,
badges b,
users u
WHERE c.Score=0
AND p.Score>=-4
AND p.ViewCount>=0
AND p.ViewCount<=5977
AND p.AnswerCount<=4
AND p.CommentCount>=0
AND p.CommentCount<=11
AND u.Reputation<=312
AND u.DownVotes<=0
AND c.CreationDate<=1540
AND p.CreationDate>=217

AND u.Id = p.OwnerUserId
AND u.Id = b.UserId
AND p.Id = c.PostId
AND p.Id = ph.PostId
AND p.Id = v.PostId;
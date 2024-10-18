SELECT COUNT(*)
 FROM comments c,
posts p,
postHistory ph,
votes v,
badges b,
users u
WHERE p.PostTypeId=1
AND p.Score<=192
AND p.ViewCount>=0
AND p.ViewCount<=2772
AND p.AnswerCount<=5
AND u.DownVotes>=0

AND u.Id = p.OwnerUserId
AND u.Id = b.UserId
AND p.Id = c.PostId
AND p.Id = ph.PostId
AND p.Id = v.PostId;
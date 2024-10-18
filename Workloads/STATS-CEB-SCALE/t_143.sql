SELECT COUNT(*)
 FROM comments c,
posts p,
postHistory ph,
votes v,
badges b,
users u
WHERE p.AnswerCount>=0
AND p.CommentCount>=0
AND u.Reputation>=1
AND u.Reputation<=642
AND u.DownVotes>=0
AND b.Date<=1542

AND u.Id = p.OwnerUserId
AND p.Id = v.PostId
AND p.Id = c.PostId
AND u.Id = b.UserId
AND p.Id = ph.PostId;
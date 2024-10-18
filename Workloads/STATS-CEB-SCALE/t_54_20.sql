SELECT COUNT(*)
 FROM tags t,
posts p,
users u,
postHistory ph,
badges b
WHERE p.CommentCount >= 0
AND u.DownVotes <= 30
AND b.Date <= 558

AND p.Id = t.ExcerptPostId
AND u.Id = ph.UserId
AND u.Id = b.UserId
AND u.Id = p.OwnerUserId;
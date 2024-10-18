SELECT COUNT(*)
 FROM tags t,
posts p,
users u,
votes v,
badges b
WHERE u.Views >= 49
AND u.Views <= 350
AND u.UpVotes >= 109
AND v.BountyAmount >= 0.0
AND v.BountyAmount <= 100.0
AND u.CreationDate <= 1196
AND b.Date <= 982

AND p.Id = t.ExcerptPostId
AND u.Id = v.UserId
AND u.Id = b.UserId
AND u.Id = p.OwnerUserId;